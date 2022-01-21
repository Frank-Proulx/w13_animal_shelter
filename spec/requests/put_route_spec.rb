require 'rails_helper'

describe "update an animal route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  before do
    put "/animals/#{Animal.first.id}", params: { :name => 'Bojangles', :species => 'Dog', :age => 10, :breed => 'Dalmation', :sex => 'Male' }
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("This animal has been updated successfully.")
  end

  it 'should have new name, species, age, breed and sex' do
    expect(Animal.first.name).to eq("Bojangles")
    expect(Animal.first.species).to eq("Dog")
    expect(Animal.first.age).to eq(10)
    expect(Animal.first.breed).to eq("Dalmation")
    expect(Animal.first.sex).to eq("Male")
  end
end

require 'rails_helper'

describe "search for a breed route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  
  before { get "/animals?breed=#{Animal.first.breed}"}

  it 'returns one animal' do
    expect(JSON.parse(response.body).size).to eq(1)
  end
  
  it 'returns the animal with the searched breed' do
    expect(JSON.parse(response.body).first['breed']).to eq(Animal.first.breed)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
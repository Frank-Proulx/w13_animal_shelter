require 'rails_helper'

describe "post an animal route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    post '/animals', params: { :name => 'skimbleshanks', :species => 'Cat', :age => 8, :breed => 'Tabby', :sex => 'Female' }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('skimbleshanks')
  end

  it 'returns the animal species' do
    expect(JSON.parse(response.body)['species']).to eq('Cat')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq(8)
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Tabby')
  end

  it 'returns the animal sex' do
    expect(JSON.parse(response.body)['sex']).to eq('Female')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

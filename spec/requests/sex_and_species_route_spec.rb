require 'rails_helper'

describe "search for a sex and species route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  
  before { get "/animals?sex=#{Animal.first.sex}&species=#{Animal.first.species}"}

  it 'returns animals with the searched sex' do
    expect(JSON.parse(response.body).first['sex']).to eq(Animal.first.sex)
    expect(JSON.parse(response.body).first['species']).to eq(Animal.first.species)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
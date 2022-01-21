require 'rails_helper'

describe "search for a species route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  
  before { get "/animals?species=#{Animal.first.species}"}

  it 'returns animals with the searched species' do
    expect(JSON.parse(response.body).first['species']).to eq(Animal.first.species)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
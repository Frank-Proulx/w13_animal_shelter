require 'rails_helper'

describe "search for a breed route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  
  before { get "/api/v1/animals?breed=#{Animal.first.breed}"}
  
  it 'returns animals with the searched breed' do
    expect(JSON.parse(response.body).first['breed']).to eq(Animal.first.breed)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end


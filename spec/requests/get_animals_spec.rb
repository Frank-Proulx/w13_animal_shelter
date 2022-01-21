require 'rails_helper'

describe "get all animals route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 8)}

  it 'returns all animals' do
    get '/api/v1/animals'
    expect(JSON.parse(response.body).size).to eq(8)
  end
  
  it 'returns the first 5 animals' do
    get '/api/v1/animals?page=1'
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns the last 3 animals' do
    get '/api/v1/animals?page=2'
    expect(JSON.parse(response.body).size).to eq(3)
  end
  
  it 'returns status code 200' do
    get '/api/v1/animals'
    expect(response).to have_http_status(:success)
  end
end
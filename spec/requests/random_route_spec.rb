require 'rails_helper'

describe "get a random quotes route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before { get '/animals/random'}

  it 'returns one random animal' do
    expect(JSON.parse(response.body).size).to eq(6) # this is confirming the correct number of parameters in an animal object
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
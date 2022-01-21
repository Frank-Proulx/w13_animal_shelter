require 'rails_helper'

describe "search for a sex route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  
  before { get "/animals?sex=#{Animal.first.sex}"}

  it 'returns animals with the searched sex' do
    expect(JSON.parse(response.body).first['sex']).to eq(Animal.first.sex)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
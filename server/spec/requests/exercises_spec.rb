require 'rails_helper'

RSpec.describe 'Scheduler API', type: :request do
  # initialize test data 
  let!(:exercises) { create_list(:exercise, 10) }
  let(:exercise_id) { exercises.first.id }

  # Test suite for GET /exercises
  describe 'GET /exercises' do
    # make HTTP get request before each example
    before { get '/exercises' }

    it 'returns exercises' do
      expect(response.body).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
require 'rails_helper'

RSpec.describe 'Scheduler API', type: :request do
  # initialize test data 
  let!(:workouts) { create_list(:workout, 10) }
  let(:workout_id) { workouts.first.id }

  # Test suite for GET /workouts
  describe 'GET /workouts' do
    # make HTTP get request before each example
    before { get '/workouts' }

    it 'returns workouts' do
      expect(response.body).not_to be_empty
      expect(JSON.parse(response.body)['programs'].size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end

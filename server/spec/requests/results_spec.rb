require 'rails_helper'

RSpec.describe 'Scheduler API', type: :request do
  # initialize test data 
  let(:exercise) { create(:exercise) }
  let(:workout) { create(:workout) }
  let(:user) { create(:user) }
  let!(:results) { create_list(:result, 10, user: user, workout: workout, exercise: exercise) }
  let(:result_id) { results.first.id }

  # Test suite for GET /results
  describe 'GET /results' do
    # make HTTP get request before each example
    before { get '/results' }

    it 'returns results' do
      expect(response.body).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
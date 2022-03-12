# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SortingAlgorithms::BubbleSortController, type: :controller do
  describe 'sorte array' do
    it 'should sort the following array [64, 34, 25, 12, 22, 11, 90]' do
      params = { array: [64, 34, 25, 12, 22, 11, 90] }
      expected_response = { 'message' => [11, 12, 22, 25, 34, 64, 90] }
      post :create, params: params

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body).to eq(expected_response)
    end

    it 'should sort the following array [5, 1, 4, 2, 8]' do
      params = { array: [5, 1, 4, 2, 8] }
      expected_response = { 'message' => [1, 2, 4, 5, 8] }
      post :create, params: params

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body).to eq(expected_response)
    end
  end
end

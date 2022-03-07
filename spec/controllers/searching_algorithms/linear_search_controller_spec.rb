# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SearchingAlgorithms::LinearSearchController, type: :controller do
  context 'POST' do
    it "should return 'Element x is not present in array provided'" do
      params = {
        array: [10, 20, 80, 30, 60, 50, 110, 100, 130, 170],
        element: 175
      }

      expected_response = { 'message' => 'Element 175 is not present in array provided' }

      post :create, params: params

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body).to eq(expected_response)
    end

    it "should return 'Element x is present at index y'" do
      params = {
        array: [10, 20, 80, 30, 60, 50, 110, 100, 130, 170],
        element: 110
      }

      expected_response = { 'message' => 'Element 110 is present at index 6' }

      post :create, params: params

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body).to eq(expected_response)
    end
  end
end

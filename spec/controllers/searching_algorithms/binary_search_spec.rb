# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SearchingAlgorithms::BinarySearchController, type: :controller do
  context 'POST Binary Search' do
    it "should return 'Element x is not present in array provided'" do
      params = {
        array: [2, 3, 4, 10, 40],
        element: 30
      }

      expected_response = { 'message' => 'Element 30 is not present in array provided' }

      post :create, params: params

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body).to eq(expected_response)
    end

    it "should return 'Element x is present at index y'" do
      params = {
        array: [2, 3, 4, 10, 40],
        element: 10
      }

      expected_response = { 'message' => 'Element 10 is present at index 3' }

      post :create, params: params

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body).to eq(expected_response)
    end
  end
end

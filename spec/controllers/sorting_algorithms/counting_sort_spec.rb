# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SortingAlgorithms::CountingSortController, type: :controller do
  describe 'Counting sort' do
    it "should sort the following array: [ 'g', 'e', 'e', 'k', 's', 'f', 'o', 'r', 'g', 'e', 'e', 'k', 's' ]" do
      params = {
        array: %w[g e e k s f o r g e e k s]
      }
      expected_response = { 'message' => 'eeeefggkkorss' }
      post :create, params: params

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body).to eq(expected_response)
    end
  end
end

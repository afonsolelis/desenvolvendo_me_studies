# frozen_string_literal: true

require 'test_helper'

module SearchinAlgorithms
  class LinearSearchControllerTest < ActionDispatch::IntegrationTest
    test 'Element in array' do
      params = {
        "array": [10, 20, 80, 30, 60, 50, 110, 100, 130, 170],
        "element": 175
      }

      post '/searching_algorithms/linear_search', params: params
      assert_response :success
    end
  end
end

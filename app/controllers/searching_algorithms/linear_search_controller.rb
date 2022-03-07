# frozen_string_literal: true

module SearchingAlgorithms
  # Class for demonstrate if an element is included inside an array
  class LinearSearchController < ApplicationController
    def create
      render json: {
        message: SearchingAlgorithmsService::LinearSearch.new(params).call
      }, status: 200
    end
  end
end

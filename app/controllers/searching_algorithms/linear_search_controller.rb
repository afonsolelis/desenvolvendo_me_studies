# frozen_string_literal: true

module SearchingAlgorithms
  # Class for demonstrate if an element is included inside an array
  class LinearSearchController < ApplicationController
    def create
      render json: {
        message: SearchingAlgorithmsService::SearchPattern.new(linear_search_params).call
      }, status: :ok
    end

    private

    def linear_search_params
      params.permit(:element).merge(array: params[:array])
    end
  end
end

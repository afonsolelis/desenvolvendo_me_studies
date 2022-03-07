# frozen_string_literal: true

module SearchingAlgorithms
  # Class for demonstrate if an element is included inside an array
  class BinarySearchController < ApplicationController
    def create
      render json: {
        message: SearchingAlgorithmsService::BinarySearch.new(params).call
      }, status: :ok
    end

    private

    def linear_search_params
      params.permit(:element).merge(array: params[:array])
    end
  end
end

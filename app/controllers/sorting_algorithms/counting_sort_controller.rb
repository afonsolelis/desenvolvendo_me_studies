# frozen_string_literal: true

module SortingAlgorithms
  # Counting sort
  class CountingSortController < ApplicationController
    def create
      render json: {
        message: sorting_service
      }, status: :ok
    end

    private

    def counting_params
      params.permit(:max, :min).merge(array: params[:array])
    end

    def sorting_service
      SortingAlgorithmsService::CountingSort.new(
        array: counting_params[:array],
        max: counting_params[:max],
        min: counting_params[:min]
      ).call
    end
  end
end

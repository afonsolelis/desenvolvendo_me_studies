# frozen_string_literal: true

module SortingAlgorithms
  # Counting sort
  class CountingSortController < ApplicationController
    def create
      render json: {
        message: SortingAlgorithmsService::CountingSort.new(counting_params).call
      }, status: :ok
    end

    private

    def counting_params
      params[:array]
    end
  end
end

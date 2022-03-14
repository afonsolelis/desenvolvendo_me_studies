# frozen_string_literal: true

module SortingAlgorithms
  # Controller to do bubble sorting
  class BubbleSortController < ApplicationController
    def create
      render json: {
        message: SortingAlgorithmsService::BubbleSort.new(bubble_params).call
      }, status: :ok
    end

    private

    def bubble_params
      params[:array]
    end
  end
end

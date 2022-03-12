# frozen_string_literal: true

module SortingAlgorithms
  # Controller to do bubble sorting
  class BubbleSortController < ApplicationController
    def create
      render json: {
        message: SortingAlgorithmsService::BubbleSort.new(params).call
      }, status: :ok
    end
  end
end

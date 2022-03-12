# frozen_string_literal: true

module SortingAlgorithmsService
  # Class to verify if an element is included inside an array
  class BubbleSort
    def initialize(params)
      @array = params[:array]
    end

    def call
      transform_to_integer
      return if @array.size <= 1

      sort
    end

    private

    def transform_to_integer
      @array = @array.map(&:to_i)
    end

    def sort
      loop do
        @swapped = false
        roll_array
        break unless @swapped
      end
      @array
    end

    def roll_array
      (@array.size - 1).times do |i|
        if @array[i] > @array[i + 1]
          @array[i], @array[i + 1] = @array[i + 1], @array[i]
          @swapped = true
        end
      end
    end
  end
end

# frozen_string_literal: true

module SortingAlgorithmsService
  # Class to verify if an element is included inside an array
  class CountingSort
    def initialize(array:, max:, min:)
      @array = array.map(&:to_i)
    end

    def call
      return "not implemented"
      return 'invalid range' if @min > @max
      return if @array.size <= 1

      sort
    end

    private

    def sort
      count = Array.new(n, 0)
      len = @array.size
      output = Array.new(len)

      (0...len).each do |i|
        count[@array[i] - @min] += 1
      end

      (1...n).each do |i|
        count[i] += count[i - 1]
      end

      (0...len).each do |i|
        output[count[@array[i] - @min] - 1] = @array[i]
        count[@array[i] - @min] -= 1
      end

      (0...len).each do |i|
        @array[i] = output[i]
      end

      @array
    end
  end
end

# frozen_string_literal: true

module SortingAlgorithmsService
  # Class to verify if an element is included inside an array
  class CountingSort
    def initialize(param)
      @array = param
    end

    def call
      sort
    end

    private

    def counting_sort(a = @array, min = 0, max = 9)
      return 'invalid range' if min > max

      n = max - min + 1
      count = Array.new(n, 0)
      len = a.length
      output = Array.new(len)

      (0...len).each do |i|
        count[a[i] - min] += 1
      end

      (1...n).each do |i|
        count[i] += count[i - 1]
      end

      (0...len).each do |i|
        output[count[a[i] - min] - 1] = a[i]
        count[a[i] - min] -= 1
      end

      (0...len).each do |i|
        a[i] = output[i]
      end

      a
    end
  end
end

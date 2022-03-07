# frozen_string_literal: true

module SearchingAlgorithmsService
  # Class to verify if an element is included inside an array
  class LinearSearch

    attr_accessor :array, :element

    def initialize(params)
      self.array = params[:array]
      self.element = params[:element]
    end

    def call
      response
    end

    private

    def response
      return included_element if array.include?(element)

      not_included_element
    end

    def included_element
      "Element #{element} is present at index #{array.index(element)}"
    end

    def not_included_element
      "Element #{element} is not present in array provided"
    end
  end
end

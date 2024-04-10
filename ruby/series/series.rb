# frozen_string_literal: true

# We learn about each_cons method in Enumerable module
# https://ruby-doc.org/3.2.2/Enumerable.html#method-i-each_cons
class Series
  def initialize(series)
    @series = series
  end

  def slices(number)
    raise ArgumentError if not_valid?(number)

    contiguous_substrings(number)
  end

  private

  attr_reader :series

  def not_valid?(number)
    number > series.length
  end

  def contiguous_substrings(number)
    series.chars.each_cons(number).map(&:join)
  end
end

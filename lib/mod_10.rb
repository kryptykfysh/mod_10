require "mod_10/version"

module Mod10
  # Returns the Mod10 check digit for the given value, which can be integer or
  # String.
  def generate_check_digit(value)
    (value.to_s.split(//).map(&:to_i).reduce(:+) * 9).to_s.split(//)[-1].to_i
  end

  # Checks if a given value has a valid Mod10 check digit.
  def is_mod10?(value)
    total = 0
    value.to_s.reverse.split(//).map(&:to_i).each_with_index do |el, i|
      el *= 2 if i.even?
      el = el.to_s.split(//).reduce(0) { |sum, x| sum += x.to_i } if el > 9
      total += el
    end
    total % 10 == 0
  end
end

require "mod_10/version"

module Mod10
  # Returns the Mod10 check digit for the given value, which can be integer or
  # String.
  def generate_check_digit(value)
    total = 0
    value.to_s.reverse.split(//).map(&:to_i).each_with_index do |el, i|
      el *= 2 if i.even?
      if el > 9
        el = el.to_s.split(//).reduce(0) { |sum, x| sum += x.to_i }
      end
      total += el
    end
    total.to_s[-1]
  end

  # Checks if a given value has a valid Mod10 check digit.
  def is_mod10?(value)
    total = 0
    value.to_s.reverse.split(//).map(&:to_i).each_with_index do |el, i|
      el *= 2 if i.even?
      el = el.to_s.split(//).reduce(0) { |sum, x| sum += x.to_i } if el > 9
      total += el
    end
    total.to_s[-1] == '0'
  end
end

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
    10 - total.to_s[-1].to_i
  end

  # Checks if a given value has a valid Mod10 check digit.
  def is_mod10?(value)
    digits = value.to_s.chars.map(&:to_i)
    check_digit = digits.pop

    sum = digits.reverse.each_slice(2).map do |x, y|
      [(x * 2).divmod(10), y || 0]
    end.flatten.inject(:+)

    10 - sum % 10 == check_digit
  end
end

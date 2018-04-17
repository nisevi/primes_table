require 'byebug'
class Prime
  class << self
    def prime?(number)
      return false if number < 2
      sqrt = Math.sqrt(number).to_i
      (2..sqrt).each do |i|
        return false if (number % i).zero?
      end
      true
    end

    def generate_primes(limit)
      collection = []
      (1..limit).each do |number|
        collection << number if prime?(number)
      end
      collection
    end
  end
end
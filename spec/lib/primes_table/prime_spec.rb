require 'spec_helper'

describe 'Prime methods.' do
  it 'should check if number is prime' do
    expect(Prime.prime?(541)).to be true
    expect(Prime.prime?(542)).to be false
  end

  it 'should return a list of prime numbers' do
    expect(Prime.generate_primes(10)).to eq([2, 3, 5, 7])
  end
end
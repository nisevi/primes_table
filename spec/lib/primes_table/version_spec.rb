# frozen_string_literal: true

require 'spec_helper'

describe 'Check app version.' do
  it 'should be the latest version' do
    expect(PrimesTable::VERSION).to match('0.1.3')
  end
end

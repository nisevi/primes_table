# frozen_string_literal: true

require 'spec_helper'

describe 'Matrix.' do
  let(:args) { { rows: 10, columns: 10 } }

  before(:each) do
    @matrix = Matrix.new(args)
  end

  it 'should initialize a new matrix' do
    expect(@matrix.rows_header).to eq([2, 3, 5, 7])
    expect(@matrix.columns_header).to eq([2, 3, 5, 7])
    expect(@matrix.table).to eq(
      [
        [4,  6,  10, 14],
        [6,  9,  15, 21],
        [10, 15, 25, 35],
        [14, 21, 35, 49]
      ]
    )
  end

  it 'should print the matrix properly' do
    printed_matrix = <<~MATRIX
            2   3   5   7
      2  |  4   6  10  14
      3  |  6   9  15  21
      5  | 10  15  25  35
      7  | 14  21  35  49
    MATRIX
    expect do
      @matrix.print
    end.to output(printed_matrix).to_stdout
  end
end

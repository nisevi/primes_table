require 'spec_helper'

describe 'Matrix.' do
  let(:args) { { rows: 10, columns: 10 } }

  it 'should initialize a new matrix' do
    matrix = Matrix.new(args)
    expect(matrix.rows_header).to eq([2, 3, 5, 7])
    expect(matrix.columns_header).to eq([2, 3, 5, 7])
    expect(matrix.table).to eq(
      [
        [4,  6,  10, 14],
        [6,  9,  15, 21],
        [10, 15, 25, 35],
        [14, 21, 35, 49]
      ]
    )
  end
end
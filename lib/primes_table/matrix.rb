class Matrix
  attr_accessor :rows_header, :columns_header, :table

  def initialize(args)
    rows = header(args[:rows])
    columns = header(args[:columns])
    @table = load_table(rows, columns)
    @rows_header = rows
    @columns_header = columns
  end

  def print
    distance = last_value.to_s.length
    puts format_columns_header(distance)
    table.each_with_index do |row, index|
      puts format_rows(row, index, distance)
    end
  end

  private

  def header(limit)
    Prime.generate_primes(limit)
  end

  def load_table(rows, columns)
    collection = []
    rows.each_with_index do |row_value, row_index|
      collection << []
      columns.each do |column|
        collection[row_index] << row_value * column
      end
    end
    collection
  end

  def last_value
    table[-1][-1]
  end

  def format_columns_header(distance)
    "#{' ' * distance}   #{format_collection(columns_header, distance)}"
  end

  def format_rows(row, index, distance)
    len_index = rows_header[index].to_s.length
    format_prime = "#{rows_header[index]}#{' ' * (distance - len_index)}"
    collection = format_collection(row, distance)
    "#{format_prime} | #{collection}"
  end

  def format_collection(list, distance)
    list.collect { |i| ' ' * (distance - i.to_s.size) + i.to_s }.join('  ').to_s
  end
end
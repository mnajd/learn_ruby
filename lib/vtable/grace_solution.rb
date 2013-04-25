puts 'VTable format'

# data & desired columns
data = (0...17).to_a
num_cols = 3

# calculate rows
num_rows = (data.length + (num_cols - 1)) / num_cols

# for each row
0.upto(num_rows-1) do |current_row|

  # get index
  index = current_row #zero based

  # for each column
  1.upto(num_cols) do |current_col|

    # adjust the index
    # add num_rows to index; if not first column
    index += num_rows if current_col > 1

    # print index
    print data[index].to_s.rjust(10)

  end

  print "\n"

end

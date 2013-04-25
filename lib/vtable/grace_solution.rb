puts 'VTable format'

class Array

  def print_vtable(num_cols)
    # calculate rows
    num_rows = (self.length + (num_cols - 1)) / num_cols

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
        print self[index].to_s.rjust(10)

      end

      print "\n"

    end
  end
end

# cols
num_cols = 3

# print_vtable on array
(0...17).to_a.print_vtable(num_cols)
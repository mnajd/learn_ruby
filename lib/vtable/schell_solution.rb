puts 'VTable format'
 
class Array

  def create_vtable(cols)

    # calculate rows
    rows = (self.length.to_f / cols).ceil
    
    # map results
    self.map { |index| 

      # integer math; solve for x and y
      x = (index % cols)
      y = (index / cols)

      # solve for index
      self[x * rows + y]
    }
  end
end
 
# print_vtable on array
cols = 3
a = (0...17).to_a.create_vtable(cols)

print a.inspect

3.times {puts ''}
# print it
a.each_with_index do |val, i|
  
  # print the value
  print val.to_s.rjust(10)
  
  # end the row
  if cols % i
    print "\n"
  end
end
puts 'VTable format'
 
class Array

  def print_vtable(cols)

    # calculate rows
    rows = (self.length.to_f / cols).ceil
    
    # map results
    self.each_with_index do |index| 

      # integer math; solve for x and y
      x = (index % cols)
      y = (index / cols)

      # solve for index
      print self[x * rows + y].to_s.rjust(10)
      print "\n" if x==cols-1
     
    end
  end
end
 
# print_vtable on array
(0...17).to_a.print_vtable(3)

2.times { puts '' }
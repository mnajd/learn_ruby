puts 'VTable format'

class Array

	def print_vtable(num_cols)

		# calculate rows
		num_rows = (self.length + num_cols - 1) / num_cols;   

		# for each row
		0.upto(num_rows-1) do  | current_row | 

			# for each col
			0.upto(num_cols - 1) do | current_col |  

				# calculate index
				index = (current_col * num_rows) + current_row

				# add to row
				print self[index].to_s.rjust(10)  

			end
			puts "\n"
		end
	end
	
end

# cols
num_cols = 3

# print_vtable on array
(0...17).to_a.print_vtable(num_cols)
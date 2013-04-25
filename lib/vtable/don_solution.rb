#######################
# Vert Table format
puts 'VTable format'

# algorithm: (current_col * number_rows) + current_row
def vtable(data, number_cols)

	# number of rows
	number_rows = (data.length + number_cols - 1) / number_cols;   

	# zero based row iter
	0.upto(number_rows-1) do  | current_row | 

		# populate row
		row = []

		# zero based col iter
	    0.upto(number_cols - 1) do | current_col |  

	    	# calculate index
			index = (current_col * number_rows) + current_row

			# add to row
			if index < data.length 
	        	row << data[index].to_s.rjust(10)  
	        end
	    end

	    # puts row
	    puts row.join
	end
end

# run
vtable((0...15).to_a, 5)


2.times { puts ''}
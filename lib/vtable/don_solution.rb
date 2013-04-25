puts 'VTable format'

# data & desired columns
data = (0...17).to_a
num_cols = 3

# calculate rows
num_rows = (data.length + num_cols - 1) / num_cols;   

# for each row
0.upto(num_rows-1) do  | current_row | 

	# for each col
	0.upto(num_cols - 1) do | current_col |  

		# calculate index
		index = (current_col * num_rows) + current_row

		# add to row
		print data[index].to_s.rjust(10)  

	end
	puts "\n"
end
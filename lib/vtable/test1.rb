
def header(title)
	2.times {  puts '' }
	puts title
	puts '-------------------'
end

#######################
# read file
data = File.read('data.txt').split()


#######################
# display raw data
header 'Raw data'
data.each{|x| print "#{x}\n"}


#######################
# sort, filter & frequence

# filter
data = data.reject do |x|
	x=='a' || x=='the' || x=='in'
end

# sort & frequence
data = data.sort.group_by {|x|x}

# display
header 'Sorted, filtered & display fequency'
data.each{|x,y| print "#{y.size} #{x}\n"}


#######################
# Table format
header 'Table format'
count = 0
data.each do |x,y|
 	count += 1 
 	print "#{x}".rjust(10)
 	if (count == 3)
		print "\n"
		count = 0		
	end
end

2.times { puts ''}



#######################
# Vert Table format
header 'VTable format'

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
vtable(data.keys.to_a, 5)


2.times { puts ''}
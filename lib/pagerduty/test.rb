def do_work(a)
   result = []

   # for each index
   while not a.empty?

       # first element
       val1 = a.shift
       
       # iter array
       a.each_with_index do |val2, x| 
    
            # check for condition
            if val1 + val2 == 100
            
                # save
                result << [val1, val2]
                
                # remove from array
                a.delete_at(x)

            end
        end
   end

   # return
   result
end
a = [ 95, 5, 95 ]
result = do_work(a)
puts result.inspect




def do_work(a)
  result = []
  hashed = Hash.new(0)
  a.each do |num|
    if hashed[100 - num] > 0
      hashed[100 - num] -= 1
      result << [ num, 100 - num ]
    else
      hashed[num] += 1
    end
  end
  result
end



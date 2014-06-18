def fizz_buzz(n)
 
  array = []
  n.times do |x|
    i = x + 1  
    if(i%3 == 0 && i%5 == 0)
      array[x] = "FizzBuzz"  
    elsif(i%3 == 0)
      array[x] = "Fizz"
    elsif(i%5 == 0) 
      array[x] = "Buzz"
    else   
      array[x]=i 
    end
  end
array
end



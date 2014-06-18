  def missing_number(array)
    array = array.sort
    n = array.length
    rpt = nil  
    n.times do |i|
      if(i < n-1 )
        if (array[i] != array[i+1]-1)
          rpt = array[i]+1
        end
      end
    end
    if rpt == nil
       array.last+1
    end
  rpt   
  end    


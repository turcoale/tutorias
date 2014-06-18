  def sqrt(n)
    n = n.round
    rsp = n
    i = 0
    while i != rsp
      i = rsp
      rsp = (n/rsp + rsp)/2
    end
  rsp  
  end


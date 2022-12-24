csv(e,[c]) := block([i,ei,n],
  if listp(e) or matrixp(e) then (
    e : args(e),
    n : length(e),
    for i : 1 thru n do (
      ei : inpart(e,i),
      if c = [true] or (i < n) then csv(ei,true) else csv(ei,false)))
  else if c=[true] then print(e,",") else print(e))$

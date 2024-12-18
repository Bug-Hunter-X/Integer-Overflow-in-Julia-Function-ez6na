```julia
function myfunction(x)
  x_big = BigInt(x)
  if x_big > 0
    return x_big^2
  else
    return -x_big^2 
  end
 end

println(myfunction(-4))
println(myfunction(-typemax(Int64)))
```
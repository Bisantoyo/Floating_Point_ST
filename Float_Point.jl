using Random
using RandomNumbers
global time = 0
global Counter = 0
rng = Xorshifts.Xorshift128Star(1234)
global t1 = time_ns()
global goal = 1
while  time < goal
    a = rand(rng, Float64)
    b = rand(rng, Float64)
    c = a * b
    global Counter = Counter + 1
    global t2 = time_ns()
    global time = (t2 - t1) / 1e9
end
println(Counter)

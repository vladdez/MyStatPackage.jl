include("setup.jl")

@testset "sum" begin
    rse_sum(1:36) == 666 
end

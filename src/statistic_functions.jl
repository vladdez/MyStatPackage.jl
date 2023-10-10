function rse_sum(array)
    +(collect(array)...)
end


function rse_mean(array)
    a = collect(array)
    b = +(a...) / length(a)
    return b
end


function rse_std(array)
    a = collect(array)
    aa = a .- rse_mean(array)
    b = rse_sum(aa .^ 2) / (length(a) - 1)
    c = sqrt(b)
    return c
end


function rse_tstat(array; σ=rse_std(array))
    x = collect(array)
    return res = rse_mean(x) / (σ / sqrt(length(x)))

end

function printOwner()
    println("vladdez")
end


struct StatResult
    x::UnitRange
    n::Int
    std::Float64
    tvalue::Float64
end
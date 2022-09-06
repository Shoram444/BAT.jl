# This file is a part of BAT.jl, licensed under the MIT License (MIT).

using Test

Test.@testset "nested_sampling" begin
    # Python ultranest package doesn't seem to be available via Conda on
    # 32-bit systems:
    if Int == Int64
        if isdefined(Main, :UltraNest)
            include("test_ultranest.jl")
        end
        include("test_ellipsoidal_nested_sampling.jl")
    end
end

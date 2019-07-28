module Surrogates

using LinearAlgebra
using DataFrames
using GLM
using Distributions
using Sobol
using LatinHypercubeSampling
using Flux
using XGBoost
using LIBSVM

abstract type AbstractSurrogate <: Function end
include("Radials.jl")
include("Kriging.jl")
include("Sampling.jl")
include("Optimization.jl")
include("Lobachesky.jl")
include("LinearSurrogate.jl")
include("NeuralSurrogate.jl")
include("RandomForestSurrogate.jl")
include("SVMSurrogate.jl")

export Kriging, RadialBasis, add_point!, current_estimate, std_error_at_point
export sample, GridSample, UniformSample, SobolSample, LatinHypercubeSample, LowDiscrepancySample
export SRBF,LCBS,EI,DYCORS,surrogate_optimize
export LobacheskySurrogate, lobachesky_integral
export LinearSurrogate
export NeuralSurrogate
export RandomForestSurrogate
export SVMSurrogate
end

function calculate_transcriptional_control_array(t::Float64,x::Array{Float64,1}, problem::Dict{String,Any})::Float64

    # initialize -
    u_variable = 0.0
    
    # alias elements of the species vector -
    mRNA = x[1]
    G = x[2]
    σ70 = x[3]

    # get stuff from the problem dictionary -
    E1 = problem["E1"]
    E2 = problem["E2"]
    R = problem["ideal_gas_constant_R"]
    T_K = problem["temperature_K"]
    KD = problem["inducer_dissociation_constant"]
    n = problem["inducer_cooperativity_parameter"]
    W1 = problem["W1"]
    W2 = problem["W2"]
    f = (σ70^n / (σ70^n + KD^n))

    # TODO: write u-varible function here 
     u_variable = (W1 + (f * W2)) / (1 + W1 + (f * W2))
    # return -
    return u_variable
end
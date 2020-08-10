module DeNet

# Import necessary packages
using JuMP
using PowerModels
using DualDecomposition
using BundleMethod
const PM = PowerModels
const DD = DualDecomposition
const BM = BundleMethod

include("model.jl")
include("data.jl")
include("prob.jl")
include("solution.jl")

export DeNetModel, get_partition, get_models, get_split_vars, set_subnet_optimizer!

export find_neighbor_buses, generate_subnet_data, ref_add_cut_bus!, ref_add_cut_branch!

export decompose, build_acopf_with_free_lines, build_socbf_with_free_lines, build_acots_with_free_lines, collect_split_vars

export init_DD_algo, add_split_vars_to_algo!

end # module

# CombineML types.
module Types

export Transformer,
       Learner,
       TestLearner,
       fit!,
       transform!

# All transformer types must have implementations 
# of function `fit!` and `transform!`.
abstract type Transformer end

# Learner abstract type which all machine learners implement.
abstract type Learner <: Transformer end

# Test learner. 
# Used to separate production learners from test.
abstract type TestLearner <: Learner end

# Trains transformer on provided instances and labels.
#
# @param transformer Target transformer.
# @param instances Training instances.
# @param labels Training labels.
function fit!(transformer::Transformer, instances::T, labels::Vector) where {T <: Union{Matrix,Vector}}
  error(typeof(transformer), " does not implement fit!")
end

# Trains transformer on provided instances and labels.
#
# @param transformer Target transformer.
# @param instances Original instances.
# @return Transformed instances.
function transform!(transformer::Transformer, instances::T) where {T <: Union{Matrix,Vector}}
  error(typeof(transformer), " does not implement transform!")
end

end # module

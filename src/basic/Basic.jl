module Basic

using Flux
using Requires
using Requires: @init

using ..Transformers: Abstract3DTensor, Container, batchedmul

export PositionEmbedding, Embed, getmask,
    Vocabulary, gather, encode, decode
export OneHotArray, indices2onehot, onehot2indices,
    onehotarray, onehot, tofloat
export Transformer, TransformerDecoder

export NNTopo, @nntopo_str, @nntopo
export Stack, show_stackfunc, stack

export @toNd, Positionwise

export logkldivergence, logcrossentropy

include("./extend3d.jl")
include("./stack/topology.jl")
include("./stack/stack.jl")
include("./embed/Embed.jl")
include("./mh_atten.jl")
include("./transformer.jl")
include("./loss.jl")

end

module Proactive

export Signal,state

const _async_mode = Ref(true)
async_mode() = _async_mode.x
async_mode(b::Bool)  = _async_mode.x = b

const _debug_mode = Ref(false)
debug_mode() = _debug_mode.x
debug_mode(b::Bool)  = _debug_mode.x = b

include("PullAction.jl")
include("Signal.jl")
include("error.jl")
include("pushpull.jl")
include("eventloop.jl")
include("operators.jl")
include("bind.jl")
include("async_remote.jl")
include("time.jl")


end # module

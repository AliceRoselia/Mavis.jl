


module Mavis
    #A base type for "search nodes"
    include("nodes.jl")
    #A part where "global" states are defined.
    include("globals.jl")
    #A logic dealing with data transfer between nodes, normally between parents and children.
    #Propagating search results up the search tree is at this level.
    include("data_transfer.jl")
    #The selector of each move in a state machine, each with a picker of its own.
    include("move_picker.jl")
    #The main way in which the information of each node gets efficiently stored.
    include("transposition_table.jl")
    #Pruning logic, pruning nodes which don't matter.
    include("prune_logic.jl")
    #Extra search and depth extension for "interesting" nodes.
    include("extensions.jl")
    #A function for ordering which part of the logic gets first.
    include("logic_ordering.jl")
    #Compiling all the logics into nodes.
    include("node_compiler.jl")
    #Compiling nodes and extra logical components as a search
    include("search_builder.jl")
end
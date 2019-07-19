#=
common: Settings loaded both by a project or a standalone REPL
- Julia version: 1.0
- Author: singularitti
- Date: 2019-07-18
=#
using AbstractTrees

AbstractTrees.children(x::Type) = subtypes(x)

function showall(io, x, limit = true)
    println(io, summary(x), ":")
    Base.print_matrix(IOContext(io, :limit => limit), x)
end

Base.://(x, f::Function) = x |> f
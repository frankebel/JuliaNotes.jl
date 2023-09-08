import Pkg
Pkg.add("Documenter")
using Documenter
push!(LOAD_PATH,"../")
push!(LOAD_PATH,"../src/")
using JuliaNotes
makedocs(
    modules=[JuliaNotes],
    sitename="JuliaNotes.jl",
    pages = [
        "Home" => "index.md",
        "REPL tips at startup.jl" => "startup.md",
        "Development workflow" => "workflow.md",
        "Modules and Revise" => "modules.md",
        "Scope of loops" => "loopscopes.md",
        "Benchmark" => "benchmark.md",
        "Assignment and mutation" => "assignment.md",
        "Type instability" => "instability.md",
        "Anonymous functions" => "anonymous.md",
        #"Union splitting" => "splitting.md",
        "Tracking allocations" => "memory.md",
        "Mutability" => "immutable.md",
        "ERROR: No method..." => "nomethod.md",
        "Vector{Int} <: Vector{Real} is false???" => "typevariance.md",
        #"Parallel load balancing" => "loadbalancing.md",
        "Figures and LaTeX" => "figures.md",
        "Create new package" => "new_package.md",
        "Publish Docs" => "publish_docs.md",
    ]
)
deploydocs(
    repo = "github.com/m3g/JuliaNotes.jl.git",
    target = "build",
    branch = "gh-pages",
    versions = ["stable" => "v^", "v#.#" ],
)

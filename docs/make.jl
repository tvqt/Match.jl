using Match
using Documenter

DocMeta.setdocmeta!(Match, :DocTestSetup, :(using Match); recursive=true)

makedocs(;
    modules=[Match],
    authors="Kevin Squire, Neal Gafter <neal@gafter.com> and contributors",
    repo="https://github.com/JuliaServices/Match.jl/blob/{commit}{path}#{line}",
    sitename="Match.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaServices.github.io/Match.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaServices/Match.jl.git",
    devbranch="main",
    push_preview = true,
)

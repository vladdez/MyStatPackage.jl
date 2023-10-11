using Documenter, MyStatPackage
makedocs(
    sitename = "MyStatPackage.jl",
    modules = [MyStatPackage],
    pages = Any["Home"=>"index.md", "Showcase"=>"showcase.md"],
)

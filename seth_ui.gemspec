require_relative "lib/seth_ui/version"

Gem::Specification.new do |s|
  s.name = "seth_ui"
  s.version = SethUI::VERSION
  s.summary = "SethUI is a UI Component Library built on Phlex."
  s.description = "SethUI is a UI Component Library for Ruby developers. Built on top of the Phlex framework."
  s.authors = [ "Seth Horsley" ]
  s.files = Dir["README.md", "LICENSE.txt", "lib/**/*", "app/components/seth_ui/**/*"]
  s.require_paths = [ "lib" ]
  s.homepage = "https://rubygems.org/gems/seth_ui"
  s.license = "MIT"

  s.required_ruby_version = ">= 3.2"

  s.add_dependency "phlex", ">= 2.0"
  s.add_dependency "tailwind_merge", ">= 0.12"
end

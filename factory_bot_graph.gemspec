# frozen_string_literal: true

require_relative "lib/factory_bot_graph/version"

Gem::Specification.new do |spec|
  spec.name = "factory_bot_graph"
  spec.version = FactoryBotGraph::VERSION
  spec.summary = "Visualize relationships between FactoryBot factories"
  spec.description = "Statically analyzes FactoryBot definitions and renders their relationships as Mermaid or Graphviz DOT."
  spec.authors = ["Shinichi Maeshima"]
  spec.files = Dir["bin/*", "lib/**/*.rb", "README.md", "LICENSE"]
  spec.bindir = "bin"
  spec.executables = ["factory_bot_graph"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 3.3"
  spec.license = "MIT"

  spec.add_dependency "prism"
  spec.add_development_dependency "minitest"
end

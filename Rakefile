# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

# frozen_string_literal: true

require "bundler/gem_tasks"
require "rubygems/package_task"
require "rake/extensiontask"

rust_view_spec = Bundler.load_gemspec("rust_view.gemspec")
Gem::PackageTask.new(rust_view_spec).define

Rake::ExtensionTask.new("rust_view") do |ext|
  ext.lib_dir = "lib/rust_view"
end

task default: [:clobber, :compile]

CLEAN.add("{ext,lib}/**/*.{o,so}", "pkg")

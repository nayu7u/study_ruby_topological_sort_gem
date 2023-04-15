# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "study_ruby_topological_sort_gem"

require "minitest/reporters"
Minitest::Reporters.use!
require "minitest/autorun"

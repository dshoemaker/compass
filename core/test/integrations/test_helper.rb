require "test/unit"
require File.join(File.dirname(__FILE__), "..", "helpers", "diff")

include Compass::Diff

require 'warning'

Warning.process do |w|
  if w.include?("The $start value for random")
    $stderr.puts(warning)
  elsif w.include?("keyword")
    $stderr.puts(warning)
  else
    nil
  end
end

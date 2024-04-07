require 'sass'
require 'compass/import-once/activate'
require 'sass-globbing'
require 'test/unit'
require 'diff_as_string'
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

class Test::Unit::TestCase
  include DiffAsString
end

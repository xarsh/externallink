$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')

require 'externallink'
require 'pry'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each do |s|
  require s
end

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.include_chain_clauses_in_custom_matcher_descriptions = true
    c.syntax = :expect
  end
end

require 'uri'

%w(version view_helpers).each do |m|
  require_relative "externallink/#{m}"
end

require_relative 'externallink/railtie' if defined?(Rails)

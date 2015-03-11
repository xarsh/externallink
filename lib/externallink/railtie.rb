require 'externallink/view_helpers'

module Externallink
  class Railtie < Rails::Railtie
    initializer "externallink.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end

module Externallink
  module ViewHelpers
    def external_url?(url)
      request.host != URI(url).host
    end

    def internal_url?(url)
      request.host == URI(url).host
    end
  end
end

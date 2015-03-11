module Externallink
  module ViewHelpers
    def external_url?(url)
      !internal_url?(url)
    end

    def internal_url?(url)
      url_host = URI(url).host
      url_host.nil? || request.host == url_host
    end
  end
end

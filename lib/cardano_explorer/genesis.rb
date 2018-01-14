module CardanoExplorer
  class Genesis < Base

    def self.find
      raise NoMethodError
    end

    def initialize
    end

    # NOTE: defined in the API docs, but returns 404
    # https://cardanodocs.com/technical/explorer/api/#path--api-genesis-address-pages
    def pages(options = {})
      valid_params = %w[page pageSize redeemeed]
      options = options.keep_if { |k| valid_params.include?(k) }
      get('address/pages', options).parsed_response['Right']
    end

    def pages_total(options = {})
      valid_params = %w[pageSize redeemeed]
      options = options.keep_if { |k| valid_params.include?(k) }
      get('address/pages/total', options).parsed_response['Right']
    end

  private

    def endpoint
      'api/genesis'
    end
  end
end

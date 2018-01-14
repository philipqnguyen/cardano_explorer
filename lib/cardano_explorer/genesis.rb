module CardanoExplorer
  class Genesis < Base

    def self.find(_)
      raise NoMethodError
    end

    def initialize
    end

    def pages(options = {})
      valid_params = %w[page pageSize redeemeed]
      options = options.keep_if { |k| valid_params.include?(k) }
      response('address/pages', options).parsed_response
    end

    def pages_total(options = {})
      valid_params = %w[pageSize redeemeed]
      options = options.keep_if { |k| valid_params.include?(k) }
      response('address/pages/total', options).parsed_response
    end

  private

    def endpoint
      'api/genesis'
    end
  end
end

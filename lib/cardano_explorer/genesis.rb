module CardanoExplorer
  class Genesis < Base

    def self.find
      raise NoMethodError
    end

    def pages_total(options = {})
      valid_params = %w[pageSize redeemeed]
      options = options.keep_if { |k| valid_params.include?(k) }
      get_and_parse 'address/pages/total', options
    end

  private

    def endpoint
      'api/genesis'
    end
  end
end

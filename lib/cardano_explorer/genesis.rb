module CardanoExplorer
  class Genesis < Base

    def self.find
      raise NoMethodError
    end

    def pages_total(options = {})
      valid_params = %w[pageSize redeemeed]
      options = options.keep_if { |k| valid_params.include?(k) }
      self.class.get('address/pages/total', options).parsed_response['Right']
    end

  private

    def self.endpoint
      'api/genesis'
    end
  end
end

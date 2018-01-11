module CardanoExplorer
  class Address
    attr_reader :address

    def self.find(address)
      new(address)
    end

    def initialize(address)
      @address = address
    end

    def summary
      @response ||= HTTParty.get "#{root_url}/api/addresses/summary/#{address}"
      @response.parsed_response
    end

  private

    def root_url
      CardanoExplorer.configuration.root_url
    end
  end
end

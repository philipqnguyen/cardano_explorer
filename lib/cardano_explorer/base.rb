module CardanoExplorer
  class Base
    attr_reader :hash

    def self.find(hash)
      new hash
    end

    def initialize(hash)
      @hash = hash
    end

    def summary
      response.parsed_response['Right']
    end

  private

    def response
      @response ||= HTTParty.get "#{root_url}/#{endpoint}/#{hash}"
    end

    def root_url
      CardanoExplorer.configuration.root_url
    end

    def endpoint
      raise NotImplementedError, '#endpoint not defined in child class'
    end
  end
end

module CardanoExplorer
  class Base
    attr_reader :hash

    def self.find(hash)
      new hash
    end

    def initialize(hash = nil)
      @hash = hash
    end

    def summary
      @summary ||= "summary/#{hash}"
      get_and_parse @summary
    end

  private

    def get_and_parse(path, options = {})
      api_call = HTTParty.get "#{root_url}/#{endpoint}/#{path}", query: options
      api_call.parsed_response['Right'] || api_call.parsed_response['Left']
    end

    def root_url
      CardanoExplorer.configuration.root_url
    end

    def endpoint
      raise NotImplementedError, '#endpoint not defined in child class'
    end
  end
end

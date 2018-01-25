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
      @summary ||= self.class.get "summary/#{hash}"
      @summary.parsed_response['Right']
    end

  private

    def self.get(path, options = {})
      HTTParty.get "#{root_url}/#{endpoint}/#{path}", query: options
    end

    def self.root_url
      CardanoExplorer.configuration.root_url
    end

    def self.endpoint
      raise NotImplementedError, '#endpoint not defined in child class'
    end

  end
end

module CardanoExplorer
  class Block
    attr_reader :hash

    def self.find(hash)
      new(hash)
    end

    def initialize(hash)
      @hash = hash
    end

    def summary
      @response ||= HTTParty.get "#{root_url}/api/blocks/summary/#{hash}"
      @response.parsed_response
    end

  private

    def root_url
      CardanoExplorer.configuration.root_url
    end
  end
end

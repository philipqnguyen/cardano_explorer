module CardanoExplorer
  class Address < Base

  private

    def self.endpoint
      'api/addresses'
    end
  end
end

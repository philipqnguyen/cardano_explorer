module CardanoExplorer
  class Block < Base

  private

    def self.endpoint
      'api/blocks'
    end
  end
end

module CardanoExplorer
  class Block < Base

  private

    def endpoint
      'api/blocks/summary'
    end
  end
end

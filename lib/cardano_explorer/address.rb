module CardanoExplorer
  class Address < Base

  private

    def endpoint
      'api/addresses/summary'
    end
  end
end

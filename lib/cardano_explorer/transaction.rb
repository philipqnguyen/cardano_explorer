module CardanoExplorer
  class Transaction < Base

  private

    def endpoint
      'api/txs'
    end
  end
end

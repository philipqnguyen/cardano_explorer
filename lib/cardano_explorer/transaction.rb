module CardanoExplorer
  class Transaction < Base

  private

    def endpoint
      'api/txs/summary'
    end
  end
end

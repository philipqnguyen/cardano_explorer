module CardanoExplorer
  class Transaction < Base

    def latest
      get_and_parse 'latest'
    end

  private

    def endpoint
      'api/txs'
    end
  end
end

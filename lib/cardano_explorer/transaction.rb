module CardanoExplorer
  class Transaction < Base

    def self.latest
      get('last').parsed_response['Right'].map{ |data| new data['cteId'] }
    end

  private

    def self.endpoint
      'api/txs'
    end
  end
end

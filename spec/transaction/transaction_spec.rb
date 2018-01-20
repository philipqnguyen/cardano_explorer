describe 'Transaction' do
  include TransactionStubs
  let(:hash) do
    '7012fcaabcbc1be16afdaf754125c93e9216058321d4777c13c251d0cb5067fa'
  end
  let(:base_class) {CardanoExplorer::Transaction}
  let(:stubbed_request) {stub_get_transaction_summary hash}

  it_behaves_like 'Base'

  describe '::latest' do
    before do
      stub_last_transaction
      @latest_result = base_class.latest
    end

    it 'should make an HTTP request' do
      expect(stub_last_transaction).to have_been_requested.once
    end

    it 'should return an array of instanced transaction objects' do
      expect(@latest_result).to be_a_kind_of(Array)
      @latest_result.each do |result_tx|
        expect(result_tx).to be_a_kind_of(base_class)
      end
    end
  end
end

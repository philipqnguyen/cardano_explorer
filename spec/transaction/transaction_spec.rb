describe 'Transaction' do
  include TransactionStubs
  let(:hash) do
    '7012fcaabcbc1be16afdaf754125c93e9216058321d4777c13c251d0cb5067fa'
  end
  let(:base_class) {CardanoExplorer::Transaction}
  let(:base) {CardanoExplorer::Transaction.new}
  let(:stubbed_request) {stub_get_transaction_summary hash}
  let(:stubbed_request_latest) {stub_get_transaction_latest}

  describe '#latest' do
    before { stubbed_request_latest }

    it { expect(base.summary).to be_a(Hash) }
    it 'should make an HTTP request' do
      base.latest
      expect(stubbed_request_latest).to have_been_requested.once
    end
  end

  it_behaves_like 'Base'
end

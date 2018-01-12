describe 'Transaction' do
  include TransactionStubs
  let(:hash) do
    '7012fcaabcbc1be16afdaf754125c93e9216058321d4777c13c251d0cb5067fa'
  end
  let(:base_class) {CardanoExplorer::Transaction}
  let(:stubbed_request) {stub_get_transaction_summary hash}

  it_behaves_like 'Base'
end

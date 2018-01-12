describe 'Address' do
  include AddressStubs
  let(:hash) {'Ae2tdPwUPEZKmwoy3AU3cXb5Chnasj6mvVNxV1H11997q3VW5ihbSfQwGpm'}
  let(:base_class) {CardanoExplorer::Address}
  let(:stubbed_request) {stub_get_address_summary hash}

  it_behaves_like 'Base'
end

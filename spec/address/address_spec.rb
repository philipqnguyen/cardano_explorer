describe 'Address' do
  include AddressStubs
  let(:hash) {'Ae2tdPwUPEZKmwoy3AU3cXb5Chnasj6mvVNxV1H11997q3VW5ihbSfQwGpm'}
  let(:address_class) {CardanoExplorer::Address}
  let(:address) {address_class.new hash}
  let(:stubbed_request) {stub_get_address_summary hash}

  before {stubbed_request}

  describe '::find' do
    it {expect(address_class.find hash).to be_a(address_class)}
  end

  describe '#summary' do
    it {expect(address.summary).to be_a(Hash)}
    it 'should make an HTTP request' do
      address.summary
      expect(stubbed_request).to have_been_requested.once
    end
  end
end

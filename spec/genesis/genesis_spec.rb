describe 'Genesis' do
  include GenesisStubs
  let(:base_class) { CardanoExplorer::Genesis }
  let(:base) { base_class.new }

  # NOTE: does not behave like Base since it doesn't include #find
  # nor accept a param in the constructor

  describe '#find' do
    it 'returns a NoMethodError' do
      expect{base.find}.to raise_error(NoMethodError)
    end
  end

  describe '#summary' do
    let(:stubbed_request) { stub_get_summary }
    before { stubbed_request }

    it { expect(base.summary).to be_a(Hash) }
    it 'should make an HTTP request' do
      base.summary
      expect(stubbed_request).to have_been_requested.once
    end
  end

  describe '#pages_total' do
    let(:stubbed_request) { stub_pages_total }
    before { stubbed_request }

    it { expect(base.pages_total).to be_a(Integer) }
    it 'should make an HTTP request' do
      base.pages_total
      expect(stubbed_request).to have_been_requested.once
    end
  end
end

shared_examples 'Base' do
  before {stubbed_request}

  describe '::find' do
    it {expect(base_class.find hash).to be_a(base_class)}
  end

  describe '#summary' do
    let(:base) {base_class.new hash}
    it {expect(base.summary).to be_a(Hash)}
    it 'should make an HTTP request' do
      base.summary
      expect(stubbed_request).to have_been_requested.once
    end
  end
end

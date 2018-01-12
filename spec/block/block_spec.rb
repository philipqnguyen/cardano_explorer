describe 'Block' do
  include BlockStubs
  let(:hash) do
    'd3fdc8c8ea4050cc87a21cb73110d54e3ec92f8ae76941e8a1957ed6e6a7e0b0'
  end
  let(:block_class) {CardanoExplorer::Block}
  let(:block) {block_class.new hash}
  let(:stubbed_request) {stub_get_block_summary hash}

  before {stubbed_request}

  describe '::find' do
    it {expect(block_class.find hash).to be_a(block_class)}
  end

  describe '#summary' do
    it {expect(block.summary).to be_a(Hash)}
    it 'should make an HTTP request' do
      block.summary
      expect(stubbed_request).to have_been_requested.once
    end
  end
end

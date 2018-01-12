describe 'Block' do
  include BlockStubs
  let(:hash) do
    'd3fdc8c8ea4050cc87a21cb73110d54e3ec92f8ae76941e8a1957ed6e6a7e0b0'
  end
  let(:base_class) {CardanoExplorer::Block}
  let(:stubbed_request) {stub_get_block_summary hash}

  it_behaves_like 'Base'
end

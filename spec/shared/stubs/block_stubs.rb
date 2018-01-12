module BlockStubs
  def stub_get_block_summary(block_hash)
    url = 'https://cardanoexplorer.com/api/blocks/summary'
    request_headers = {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Ruby'
    }
    response_headers = {
      content_type: 'application/json;charset=utf-8'
    }
    body = {
      'Right' => {
        'cbsEntry' => {
          'cbeEpoch' => 0,
          'cbeSlot' => 29,
          'cbeBlkHash' => 'd3fdc8c8ea4050cc87a21cb73110d54e3ec92f8ae76941e8a1957ed6e6a7e0b0',
          'cbeTimeIssued' => 1506203671,
          'cbeTxNum' => 0,
          'cbeTotalSent' => {
            'getCoin' => '0'
          },
          'cbeSize' => 667,
          'cbeBlockLead' => '6c9e14978b9d6629b8703f4f25e9df6ed4814b930b8403b0d45350ea',
          'cbeFees' => {
            'getCoin' => '0'
          }
        },
        'cbsPrevHash' => '35837ea76e42d5f0bc3309127c9deb92e87d449ffc7d864d5eee3cbd63b2574a',
        'cbsNextHash' => 'bfd2d6b38a6e16e5710d5e6eedefaf30fe7e15753a4cb9e8da95d0a9b10525c5',
        'cbsMerkleRoot' => '0e5751c026e543b2e8ab2eb06099daa1d1e5df47778f7787faab45cdf12fe3a8'
      }
    }
    stub_request(:get, "#{url}/#{block_hash}")
      .with(headers: request_headers)
      .to_return(status: 200, body: body.to_json, headers: response_headers)
  end
end

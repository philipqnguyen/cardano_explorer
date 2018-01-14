module GenesisStubs
  def stub_get_summary
    url = 'https://cardanoexplorer.com/api/genesis/summary/'
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
        'cgsNumTotal'            => 14505,
        'cgsNumRedeemed'         => 12535,
        'cgsNumNotRedeemed'      => 1970,
        'cgsRedeemedAmountTotal' => {
          'getCoin' => '29083491488000000'
        },
        'cgsNonRedeemedAmountTotal' => {
          'getCoin' => '2028993257000000'
        }
      }
    }
    stub_request(:get, "#{url}")
      .with(headers: request_headers)
      .to_return(status: 200, body: body.to_json, headers: response_headers)
  end

  def stub_pages_total
    url = 'https://cardanoexplorer.com/api/genesis/address/pages/total'
    request_headers = {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Ruby'
    }
    response_headers = {
      content_type: 'application/json;charset=utf-8'
    }
    body = {
      'Right' => 1
    }
    stub_request(:get, "#{url}")
      .with(headers: request_headers)
      .to_return(status: 200, body: body.to_json, headers: response_headers)
  end
end

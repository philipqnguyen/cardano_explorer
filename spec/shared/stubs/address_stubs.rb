module AddressStubs
  def stub_get_address_summary(address_hex)
    url = 'https://cardanoexplorer.com/api/addresses/summary'
    request_headers = {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Ruby'
    }
    response_headers = {
      content_type: 'application/json;charset=utf-8'
    }
    body = {
      "Right"=>
        {
          "caAddress"=>"#{address_hex}",
          "caType"=>"CPubKeyAddress",
          "caTxNum"=>0,
          "caBalance"=>{
            "getCoin"=>"0"
          },
          "caTxList"=>[]
        }
      }
    stub_request(:get, "#{url}/#{address_hex}")
      .with(headers: request_headers)
      .to_return(status: 200, body: body.to_json, headers: response_headers)
  end
end

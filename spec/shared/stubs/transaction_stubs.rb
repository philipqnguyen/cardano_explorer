module TransactionStubs
  def stub_get_transaction_summary(hash)
    url = 'https://cardanoexplorer.com/api/txs/summary'
    request_headers = {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Ruby'
    }
    response_headers = {
      content_type: 'application/json;charset=utf-8'
    }
    body = {
      "Right" => {
        "ctsId" => "7012fcaabcbc1be16afdaf754125c93e9216058321d4777c13c251d0cb5067fa",
        "ctsTxTimeIssued" => 1515795491,
        "ctsBlockTimeIssued" => 1515795491,
        "ctsBlockHeight" => 479560,
        "ctsBlockEpoch" => 22,
        "ctsBlockSlot" => 4420,
        "ctsBlockHash" => "c9b5db7073b66c19b11549474539578ace4b087a9f80f3a7663e40ffa9795656",
        "ctsRelayedBy" => nil,
        "ctsTotalInput" => {
          "getCoin" => "309998772700"
        },
        "ctsTotalOutput" => {
          "getCoin" => "309998601630"
        },
        "ctsFees" => {
          "getCoin" => "171070"
        },
        "ctsInputs" => [
          [
            "DdzFFzCqrht7nTVwRaq3p5xxhY8bSWPADVi2SrdVdCogncJgEPdMt1w64aujDBZb6P8G7VaqP5zFJx5iiCkYggaF8v8YRyWujTaEFDrK",
            {
              "getCoin" => "309998772700"
            }
          ]
        ],
        "ctsOutputs" => [
          [
            "DdzFFzCqrhtDEqHLUE6NLxTqQvB5Wh8bcCoUjNUxYbvo3zR8fQBvDU6Q8HNJENAqMvCdCYzbWEgiJ1ijWDYfNGL7fo7ayutic3x4hyrE",
            {
              "getCoin" => "308997601630"
            }
          ],
          [
            "DdzFFzCqrhsnLSqJSwcxFM6CndnsUYESBoXkr8zrTqjXq4uzaeh6spni6bUbZXLAHBjbfCh9YzJN7xyHUV4XTqkg9ivP5NURE9kHF9U6",
            {
              "getCoin" => "1001000000"
            }
          ]
        ]
      }
    }
    stub_request(:get, "#{url}/#{hash}")
      .with(headers: request_headers)
      .to_return(status: 200, body: body.to_json, headers: response_headers)
  end

  def stub_last_transaction
    url = 'https://cardanoexplorer.com/api/txs/last'
    request_headers = {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent'=>'Ruby'
    }
    response_headers = {
      content_type: 'application/json;charset=utf-8'
    }
    body = {
      "Right" => [
        {
          "cteId":"93310561af41f06d924c412d98cf7a9026fe229533632369d97840610631a207",
          "cteTimeIssued":1516487111,
          "cteAmount": {"getCoin":"417999652261"}
        },
        {
          "cteId":"3759b5967c83cafd0d7ffbb49a77088be3a29fd16485898981bc65ebc69ce661",
          "cteTimeIssued":1516487071,
          "cteAmount":{"getCoin":"418002823331"}
        }
      ]
    }
    stub_request(:get, "#{url}")
      .with(headers: request_headers)
      .to_return(status: 200, body: body.to_json, headers: response_headers)
  end
end

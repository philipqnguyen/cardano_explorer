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

  def stub_get_transaction_latest
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
      "Right": [
          {
              "cteAmount": {
                  "getCoin": "18191820976"
              },
              "cteId": "6d5b48b418d6e54371c1b2bf953b79e071391de3c61f3fc66131e15e60821118",
              "cteTimeIssued": 1516114531
          },
          {
              "cteAmount": {
                  "getCoin": "1212847321618"
              },
              "cteId": "26d68d97fcd390e217b7181bbd31af3438b75d51a9c6d42db8d8ba4447883101",
              "cteTimeIssued": 1516114531
          },
          {
              "cteAmount": {
                  "getCoin": "1213440407057"
              },
              "cteId": "b10023cf8a15cdc42a1cdbb359e31e6a9ae54710274ced6f6ebe013efb26555a",
              "cteTimeIssued": 1516112971
          },
          {
              "cteAmount": {
                  "getCoin": "1214065556799"
              },
              "cteId": "052feac67a7289a431f6c7709ba857feca1f3764e2ab5df41caec0658a00d401",
              "cteTimeIssued": 1516109131
          },
          {
              "cteAmount": {
                  "getCoin": "3304596692105"
              },
              "cteId": "59f330d4726d0adc322d1759572ab067eee335db1f9dcb6ac1642ee2d14913fb",
              "cteTimeIssued": 1516109131
          },
          {
              "cteAmount": {
                  "getCoin": "571188638384"
              },
              "cteId": "9c1bf345d6ab6ebbaa2e34836b174d19852d751e687abdca251b5075820b671f",
              "cteTimeIssued": 1516109171
          },
          {
              "cteAmount": {
                  "getCoin": "240080287540"
              },
              "cteId": "de377597e8482d43f1dd38716ed9abe18599658ec5933e48a87c5688ab672ba4",
              "cteTimeIssued": 1516109251
          },
          {
              "cteAmount": {
                  "getCoin": "571141239880"
              },
              "cteId": "289d06dbe35d9f9bdb1fbe186747879fffc40cb022aaa12541a62c7b5dff10c4",
              "cteTimeIssued": 1516109251
          },
          {
              "cteAmount": {
                  "getCoin": "570956527512"
              },
              "cteId": "b59a58675de7b8c57abe259b3d2bd9537e72720a9e6748646cc9afaae26e9207",
              "cteTimeIssued": 1516109411
          },
          {
              "cteAmount": {
                  "getCoin": "3301284452119"
              },
              "cteId": "be674af71e0f839234835ffb020d8dd2db2acc49f7d84a91072a8e4cae9b1b5b",
              "cteTimeIssued": 1516109531
          },
          {
              "cteAmount": {
                  "getCoin": "570638679387"
              },
              "cteId": "6bec6bd553a896fea34acac02af47f42bee32e9cbfe56567058a3ab64d1f27f3",
              "cteTimeIssued": 1516109771
          },
          {
              "cteAmount": {
                  "getCoin": "1214002161148"
              },
              "cteId": "18668b642b68cc11e89680557179ea4693c7872504dbea880455e008acc6d177",
              "cteTimeIssued": 1516110091
          },
          {
              "cteAmount": {
                  "getCoin": "1213589519506"
              },
              "cteId": "8ca3140ce66a66c97b4f4c03c37c64280bb057644d0ade6e850aeaa979f1ae65",
              "cteTimeIssued": 1516111511
          },
          {
              "cteAmount": {
                  "getCoin": "5191209730548"
              },
              "cteId": "b5845f4115e9fdc4891405afef8c9e2efdf33ba144955d2ebe3ebef76bb54f33",
              "cteTimeIssued": 1516111751
          },
          {
              "cteAmount": {
                  "getCoin": "1213144190957"
              },
              "cteId": "b1de7652d68d78af84377324d385d84bbf8a49aa6e485540f7f3cec5e3c894b9",
              "cteTimeIssued": 1516113431
          },
          {
              "cteAmount": {
                  "getCoin": "3062119994942"
              },
              "cteId": "b98a0e92a241b12d988955f7fedb1e641cf1dad8174c70c0e466e9f8e79be300",
              "cteTimeIssued": 1516113431
          },
          {
              "cteAmount": {
                  "getCoin": "1699999630032"
              },
              "cteId": "9863494e2e64508f7ba10bf87390a1b813fbc89a04bf93485836c34e2ec94c0f",
              "cteTimeIssued": 1516114391
          },
          {
              "cteAmount": {
                  "getCoin": "1163103151"
              },
              "cteId": "bee5ad1eb3554a3082a8546d214d6f1f32d674b6edd9c452de58b5e7da05847e",
              "cteTimeIssued": 1516114431
          },
          {
              "cteAmount": {
                  "getCoin": "1212883960651"
              },
              "cteId": "e3cd4a0daeaf05b4f97f97f65a155ec5944e149da7869f3d281c9b8987c23445",
              "cteTimeIssued": 1516114511
          },
          {
              "cteAmount": {
                  "getCoin": "3043778619291"
              },
              "cteId": "1cf78f554b7a7f8ba3e61c63364332698dfd672056eddfc8fd4cdddb70efd178",
              "cteTimeIssued": 1516114511
          }
      ]
  }
    stub_request(:get, "#{url}")
      .with(headers: request_headers)
      .to_return(status: 200, body: body.to_json, headers: response_headers)
  end
end

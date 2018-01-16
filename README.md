[![Build Status](https://travis-ci.org/philipqnguyen/cardano_explorer.svg?branch=master)](https://travis-ci.org/philipqnguyen/cardano_explorer)

# Cardano Explorer

A Ruby gem that wraps the Cardano SL Explorer API. At the moment, you can
retrieve summary information on addresses, transactions, and blocks.

Author: [Philip Q Nguyen](https://github.com/philipqnguyen) <br>
Copyright: Copyright (c) 2018 Philip Q Nguyen <br>
License: [MIT](http://creativecommons.org/licenses/MIT) <br>
Info: https://github.com/philipqnguyen/cardano_explorer <br>
Bugs: https://github.com/philipqnguyen/cardano_explorer/issues

If this is useful to you, consider donating Cardano to:
`DdzFFzCqrhspCkE7nghFTDKLuVqwXEzYkqzTaZLCZbrKKQEs3Ygy4f6BeP4U6SPLh8yPU4PFpGoBdZejjKG3ksigtkcirrpZusiwzvBy`

## Installation

### Manual:

Run `gem install cardano_explorer`

### Project with Bundler or with Rails

Inside your Gemfile add:

```ruby
# Gemfile
gem 'cardano_explorer'
```

Then run `bundle install`

## Usage

### Address

Find a summary detailing the balance of an Address along with other info.

```ruby
address_id = 'Ae2tdPwUPEZKmwoy3AU3cXb5Chnasj6mvVNxV1H11997q3VW5ihbSfQwGpm'
address = CardanoExplorer::Address.find address_id
address.summary #=>
#  {
#    {
#      "caAddress"=>"Ae2tdPwUPEZKmwoy3AU3cXb5Chnasj6mvVNxV1H11997q3VW5ihbSfQwGpm",
#      "caType"=>"CPubKeyAddress",
#      "caTxNum"=>0,
#      "caBalance"=>{"getCoin"=>"0"},
#      "caTxList"=>[]
#    }
#  }
```

### Transaction

Find a summary of a Transaction.

```ruby
transaction_id = '7012fcaabcbc1be16afdaf754125c93e9216058321d4777c13c251d0cb5067fa'
transaction = CardanoExplorer::Transaction.find transaction_id
transaction.summary #=>
# {
#   "ctsId" => "7012fcaabcbc1be16afdaf754125c93e9216058321d4777c13c251d0cb5067fa",
#   "ctsTxTimeIssued" => 1515795491,
#   "ctsBlockTimeIssued" => 1515795491,
#   "ctsBlockHeight" => 479560,
#   "ctsBlockEpoch" => 22,
#   "ctsBlockSlot" => 4420,
#   "ctsBlockHash" => "c9b5db7073b66c19b11549474539578ace4b087a9f80f3a7663e40ffa9795656",
#   "ctsRelayedBy" => nil,
#   "ctsTotalInput" => {
#     "getCoin" => "309998772700"
#   },
#   "ctsTotalOutput" => {
#     "getCoin" => "309998601630"
#   },
#   "ctsFees" => {
#     "getCoin" => "171070"
#   },
#   "ctsInputs" => [
#     [
#       "DdzFFzCqrht7nTVwRaq3p5xxhY8bSWPADVi2SrdVdCogncJgEPdMt1w64aujDBZb6P8G7VaqP5zFJx5iiCkYggaF8v8YRyWujTaEFDrK",
#       {
#         "getCoin" => "309998772700"
#       }
#     ]
#   ],
#   "ctsOutputs" => [
#     [
#       "DdzFFzCqrhtDEqHLUE6NLxTqQvB5Wh8bcCoUjNUxYbvo3zR8fQBvDU6Q8HNJENAqMvCdCYzbWEgiJ1ijWDYfNGL7fo7ayutic3x4hyrE",
#       {
#         "getCoin" => "308997601630"
#       }
#     ],
#     [
#       "DdzFFzCqrhsnLSqJSwcxFM6CndnsUYESBoXkr8zrTqjXq4uzaeh6spni6bUbZXLAHBjbfCh9YzJN7xyHUV4XTqkg9ivP5NURE9kHF9U6",
#       {
#         "getCoin" => "1001000000"
#       }
#     ]
#   ]
# }
```

Get information about the last 20 transactions.

```ruby
transactions = CardanoExplorer::Transaction.new
transactions.latest
[
        {
            "cteAmount": {
                "getCoin": "1837365186664"
            },
            "cteId": "d93a355fa569b6567a2d0f5d94b936f6f5ac1ed4273794f7e680a0a63c1e6285",
            "cteTimeIssued": 1516118611
        },
        {
            "cteAmount": {
                "getCoin": "1137657029707"
            },
            "cteId": "f54571d5b8591c50bf7ad7cab800f588d446a80131b7d9a2859042546e75f16f",
            "cteTimeIssued": 1516117891
        },
        {
            "cteAmount": {
                "getCoin": "922487318"
            },
            "cteId": "9cbeb036626d661239f3efcc6373c855d74e76875d646e1fdbc4cc0a6d788acb",
            "cteTimeIssued": 1516117891
        },
        {
            "cteAmount": {
                "getCoin": "180957303"
            },
            "cteId": "4498ac0c5a7b479cb887a6e71a158a11d8c4afb4e3c0076a54bb9fa00195a087",
            "cteTimeIssued": 1516117851
        },
        {
            "cteAmount": {
                "getCoin": "568852813449"
            },
            "cteId": "67684a56c9be5c19616cb8e550ee8a06a42d64a979aad6bfbe967b663dea39be",
            "cteTimeIssued": 1516117811
        },
        {
            "cteAmount": {
                "getCoin": "1212373628930"
            },
            "cteId": "50b13513218377ac5c86150b1a512827e0daff5aee6e70a239d05b1f5a3ba3c4",
            "cteTimeIssued": 1516117611
        },
        {
            "cteAmount": {
                "getCoin": "442304195990"
            },
            "cteId": "5db1f430de2d6b518eea23f5c8a087deaa8e1f40fd86066d43cc24ec85d7eb4c",
            "cteTimeIssued": 1516116971
        },
        {
            "cteAmount": {
                "getCoin": "569511375945"
            },
            "cteId": "4dadd7ce7bec812fb12a9383f1bd86699e6fd23112489ae90f0e7a3f5b26f482",
            "cteTimeIssued": 1516116651
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
                "getCoin": "1212250365484"
            },
            "cteId": "209c36398ac1e5685a2446e9dbeeb60a40bc0313cc51043bca56043f8a4eaff3",
            "cteTimeIssued": 1516118191
        },
        {
            "cteAmount": {
                "getCoin": "568492681127"
            },
            "cteId": "1ec71487581ee24d1e6311a631c65e87e399c08a9e564918a31b4539e4284ad1",
            "cteTimeIssued": 1516118191
        },
        {
            "cteAmount": {
                "getCoin": "49829106"
            },
            "cteId": "b33483ec1b0594c23f92bf327eafd3b8ec71534718d72a1d07b8a06d02566edf",
            "cteTimeIssued": 1516118191
        },
        {
            "cteAmount": {
                "getCoin": "1867051170604"
            },
            "cteId": "2fa7add7ab45b4139ea24270f43a877aced07585f44eeb62f03d4e609c0c5556",
            "cteTimeIssued": 1516118191
        },
        {
            "cteAmount": {
                "getCoin": "568489510057"
            },
            "cteId": "ea8a58c5436fdf52bba81097a85b8e5cd6bafb09a32779260283a8c3083195fc",
            "cteTimeIssued": 1516118231
        },
        {
            "cteAmount": {
                "getCoin": "1861044028288"
            },
            "cteId": "d29b97947bf2e0f9b08a17a966aa93bf81ace07233474ae8bdd92ecbfe866011",
            "cteTimeIssued": 1516118351
        },
        {
            "cteAmount": {
                "getCoin": "568423113199"
            },
            "cteId": "7974f3dd75c21750f24b79a6c9ff47031cac0d98d9f6a27985e45a3296138225",
            "cteTimeIssued": 1516118351
        },
        {
            "cteAmount": {
                "getCoin": "198629193"
            },
            "cteId": "b7027669697c9e12a8d995cb1f1e8dcd6bc87170d79743d785204dab4d2ac892",
            "cteTimeIssued": 1516118711
        },
        {
            "cteAmount": {
                "getCoin": "1835724015365"
            },
            "cteId": "c1fef746de9d0c8de3268c87aa605f0b5217c43d9ac85a1d3dfc22755e64f232",
            "cteTimeIssued": 1516118751
        }
    ]
```


### Block

Find a summary of a Block.

```ruby
block_id = 'd3fdc8c8ea4050cc87a21cb73110d54e3ec92f8ae76941e8a1957ed6e6a7e0b0'
block = CardanoExplorer::Block.find block_id
block.summary #=>
# {
#   'cbsEntry' => {
#     'cbeEpoch' => 0,
#     'cbeSlot' => 29,
#     'cbeBlkHash' => 'd3fdc8c8ea4050cc87a21cb73110d54e3ec92f8ae76941e8a1957ed6e6a7e0b0',
#     'cbeTimeIssued' => 1506203671,
#     'cbeTxNum' => 0,
#     'cbeTotalSent' => {
#       'getCoin' => '0'
#     },
#     'cbeSize' => 667,
#     'cbeBlockLead' => '6c9e14978b9d6629b8703f4f25e9df6ed4814b930b8403b0d45350ea',
#     'cbeFees' => {
#       'getCoin' => '0'
#     }
#   },
#   'cbsPrevHash' => '35837ea76e42d5f0bc3309127c9deb92e87d449ffc7d864d5eee3cbd63b2574a',
#   'cbsNextHash' => 'bfd2d6b38a6e16e5710d5e6eedefaf30fe7e15753a4cb9e8da95d0a9b10525c5',
#   'cbsMerkleRoot' => '0e5751c026e543b2e8ab2eb06099daa1d1e5df47778f7787faab45cdf12fe3a8'
# }
```

### Genesis

Get a summary of the genesis block

```ruby
genesis = CardanoExplorer::Genesis.new
genesis.summary #=>
# {
#   'cgsNumTotal' => 14505,
#   'cgsNumRedeemed' => 12535,
#   'cgsNumNotRedeemed' => 1970,
#   'cgsRedeemedAmountTotal' => {
#     'getCoin' => '29083491488000000'
#   },
#   'cgsNonRedeemedAmountTotal' => {
#     'getCoin' => '2028993257000000'
# }
```

Get the total pages of the genesis block

```ruby
genesis = CardanoExplorer::Genesis.new
genesis.pages_total #=> 1451
```
## Notes

**Denominations**: The quantity of ADA coins is in denominations of Lovelaces.
1 ADA == 1,000,000 Lovelaces. Learn more about denominations here:
https://cardanodocs.com/cardano/monetary-policy/#treasury-and-fees

## Configuring

You can change the root url like so:

```ruby
CardanoExplorer.configuration do |config|
  config.root_url = 'https://cardanoexplorer.com' # This is the default
end
```

## Contributing

Issues and pull requests are welcome on GitHub at https://github.com/philipqnguyen/cardano_explorer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development and testing

After checking out the repo, run `bundle install` to install dependencies. Then, run `bundle exec rake` to run the tests. You can also run `bundle console` for an interactive prompt that will allow you to experiment.

## Releasing

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

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

#### Notes

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

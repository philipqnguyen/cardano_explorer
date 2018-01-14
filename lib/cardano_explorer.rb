require 'httparty'
require 'cardano_explorer/version'
require 'cardano_explorer/configuration'
require 'cardano_explorer/base'
require 'cardano_explorer/address'
require 'cardano_explorer/block'
require 'cardano_explorer/transaction'
require 'cardano_explorer/genesis'

module CardanoExplorer
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration if block_given?
  end
end

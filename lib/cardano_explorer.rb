require 'httparty'
require 'cardano_explorer/version'
require 'cardano_explorer/configuration'
require 'cardano_explorer/address'

module CardanoExplorer
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration if block_given?
  end
end

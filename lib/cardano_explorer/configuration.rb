module CardanoExplorer
  class Configuration
    attr_accessor :root_url

    def initialize
      @root_url = 'https://cardanoexplorer.com'
    end
  end
end

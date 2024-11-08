require 'faraday'
require 'json'
require 'lean_interactor'
require 'thor'
require 'yaml'
require 'ostruct'

module Mashina
  module Config
    module_function

    def xdg_config_home
      ENV.fetch('XDG_CONFIG_HOME', '$HOME/.config')
    end

    def mashina_config_dir
      "#{xdg_config_home}/mashina"
    end

    def mashina_tmp_download_dir
      '/tmp/mashina'
    end
  end

  module CLI; end
  module CLI::Commands; end

  class Package; end
  class Registry; end
end

Dir["#{__dir__}/**/*.rb"].sort.each { |file| require file }

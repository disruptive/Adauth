# Adtools Library
require 'adtools'

# Adauth Base
require 'adauth/version'
require 'adauth/config'

# Rails Extensions
require 'adauth/helpers'
require 'adauth/user_model'

# Adauth Functions
require 'adauth/authenticate'

# The top level module
#
# For Adauths documentation please see the github wiki.
module Adauth
    
    # Used to configure Adauth
    #
    # Called as
    #    Adauth.configure do |c|
    #        c.foo = "bar"
    #    end
    #
    # Configures Adauth and is required for Adauth to work.
    def self.configure
       @config = Config.new
       yield(@config)
       if @config.adtools
           Adtools::Base.setup(@config.settings_hash)
       end
    end
    
    # Returns the config object
    #
    # Allows access to the adauth config object so you can call the config values in your application
    def self.config
        @config
    end
    
    # Rails generators
    module Generators
    end
end

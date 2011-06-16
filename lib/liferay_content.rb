require 'net/http'
require 'rexml/document'
require 'liferay_content/article'

module LiferayContent

  # Liferay hostname or IP address (without HTTP)
  mattr_accessor :host
  @@host = nil
  
  mattr_accessor :port
  @@port = 80
  
  mattr_accessor :uri
  @@uri = "/tunnel-web/secure/json"
  
  mattr_accessor :group_id
  @@group_id = nil

  mattr_accessor :login
  @@login = ""
  
  mattr_accessor :password
  @@password = ""
  
  
  # Default way to setup SimpleForm. Run rails generate simple_form:install
  # to create a fresh initializer with all configuration values.
  def self.setup
    yield self
  end

end


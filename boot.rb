require 'bundler/setup'
Bundler.require(:default)

require_relative 'config/database'
require_relative 'models/url'
require_relative 'routes/url_routes'
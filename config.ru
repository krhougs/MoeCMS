require 'sprockets'
require 'sprockets-helpers'
require 'stylus/sprockets'

sprockets = (Sprockets::Environment.new)
Stylus.setup sprockets
sprockets.append_path File.join('assets', 'stylesheets')
sprockets.append_path File.join('assets', 'javascripts')
sprockets.append_path File.join('assets', 'images')

Sprockets::Helpers.configure do |config|
	config.environment = sprockets
	config.prefix      = '/assets'
	config.digest      = true
	config.public_path = '/static'

	# Force to debug mode in development mode
	# Debug mode automatically sets
	# expand = true, digest = false, manifest = false
	config.debug       = true if ENV['RACK_ENV'] == 'development'
end

require "./base"

map '/assets' do
	run sprockets
end

map '/' do 
	run Moe
end

require 'rack'
require_relative './app'

# Reload source after change
use Rack::Reloader, 0

# Serve all requests begining with /public from the "public" folder
use Rack::Static, urls: ['/public', '/favicon.ico']

run App.new

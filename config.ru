require 'rack'
require_relative 'app'
require_relative 'middleware/logging'

# Reload source after change
use Rack::Reloader, 0

# Serve all requests begining with /public from the "public" folder
use Rack::Static, urls: ['/public', '/favicon.ico']

use Logging

run App.new

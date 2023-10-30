# Load the Rails application.
require_relative "application"


ENV['RAILS_RELATIVE_URL_ROOT'] ||= '/mediclab'
CONTEXTO_BASE_URL = ENV['RAILS_RELATIVE_URL_ROOT']

# Initialize the Rails application.
Rails.application.initialize!

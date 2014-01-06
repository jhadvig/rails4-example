# Be sure to restart your server when you modify this file.

require File.join(Rails.root,'lib','openshift_secret_generator.rb')

# Be sure to restart your server when you modify this file.

# Set token based on intialize_secret function (defined in initializers/secret_generator.rb)
RailsApp::Application.config.session_store :cookie_store, :key => initialize_secret(
  :session_store,
  '_railsapp_session'
)

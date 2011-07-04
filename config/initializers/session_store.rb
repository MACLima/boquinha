# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_boquinha_session',
  :secret      => '8acf8166591050bad3cc8b8c76fe3595b23d60bd5fbfb26a37e5113f040f7e9237f110f2501d444f5d1c4065ca38568dd6b9df672cc88431366168529b3727d0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

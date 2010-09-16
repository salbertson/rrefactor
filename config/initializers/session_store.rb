# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_refactor_session',
  :secret      => '9868863f8b2743ae667221a23859b5c03f0ae04cde50bd629910458b210a61cbb84beae4f1c87d8e8c1f6993e4666341b11b356bb127edbbcc8b25ca288c6a5d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

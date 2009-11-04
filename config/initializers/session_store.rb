# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_directory_session',
  :secret      => '6596f3e393d8ef9cbf8f89aee444b042707273b030e15274ff327bdae887abcd6a9cdf7d75a3d8e9f05dd08698a9d6c1947b76e916ea9be38282abe956b53e2b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

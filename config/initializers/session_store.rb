# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_spaceships_session',
  :secret      => '06e03ff97bc4005f8f48196f20102104e8ed1991ce253777236bfc588cac4aeaa79778b95c492a9b4c7ede6d9894fe0b2b53c0dd767d1a3f4b8a12296ba044b6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

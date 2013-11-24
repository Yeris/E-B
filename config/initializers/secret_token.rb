# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
EB::Application.config.secret_key_base = '90ef5073b1d299eca7b8d9c9959b125d6e2bf32ce05d260e6627548f6baa9d98849ae5dffd5eaa8520aad40842d708c063fb430d7c015d3f805635e8fdbe128d'

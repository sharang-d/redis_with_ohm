# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
RedisWithOhm::Application.config.secret_key_base = 'fc17ec19215105c6faa09740f0bdb3e70f644b22c60124ebbc432f8f8e103421885636f307fac302fdcba6db011feffb04be727cd4bf8a41998372eb5cfb6cf8'

# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  port: 587,
  domain: 'gmail.com',
  user_name: '',
  password: '',
  authentication: 'plain',
  enable_starttls_auto: true # I don't have this, but it should work anyway
}

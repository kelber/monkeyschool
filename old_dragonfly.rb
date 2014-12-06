require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "6feddaad6c67d1f4f4f561cbf51651977cab81baf6fbb1d1f639e729a0f8fcdf"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end

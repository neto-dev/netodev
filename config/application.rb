require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsAppBase
  class Application < Rails::Application

    config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
    config.exceptions_app = self.routes

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Monterrey'

    #descomentar si necesitamos CORS
    #  config.middleware.insert_before 0, "Rack::Cors" do
    #   allow do
    #     origins '*'
    #     resource '*', :headers => :any, :methods => [:get, :post,:patch,:put, :options]
    #   end
    # end

    #descomentar si metemos sidekiq
    # config.active_job.queue_adapter = :sidekiq
    # Sidekiq.configure_server do |config|
    #   config.redis = ConnectionPool.new(size: 5, &redis_conn)
    # end
    # Sidekiq.configure_client do |config|
    #   config.redis = ConnectionPool.new(size: 25, &redis_conn)
    # end

    #si necesitamos base de datos de mongo
    #    Mongoid.load!('config/mongoid.yml')

    #configuracion de factory_bot

    # config.generators do |g|
    #   g.factory_bot dir: 'spec/factories'
    # end

    #configuracion para sqlite
    Rails.application.config.active_record.sqlite3.represent_boolean_as_integer = true


  end
end

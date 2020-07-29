require "bundler/setup"
require "sinatra/activerecord"
require 'colorize'
require 'artii'
require "tty-prompt"

Bundler.require
require_all 'app/models'

ENV['SINATRA_ENV'] ||= 'development'

ActiveRecord::Base.establish_connection(ENV['SINATRA_ENV'].to_sym)
ActiveRecord::Base.logger = nil
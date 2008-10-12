ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'
require 'factory_girl'

class Test::Unit::TestCase
end

Factory.sequence :login do |e|
  "login#{e}"
end

Factory.sequence :name do |e|
  "name#{e}"
end

Factory.sequence :email do |e|
  "email#{e}@example.com"
end

Factory.define(:user) do |user|
  user.login Factory.next(:login)
  user.name Factory.next(:name)
  user.email Factory.next(:email)
  user.password 'google'
  user.password_confirmation 'google'
end

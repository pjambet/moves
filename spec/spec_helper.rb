require 'rspec'
require "webmock/rspec"
require "json"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def stub_get(path)
  stub_request(:get, Regexp.new(Moves::Client::ENDPOINT + path))
end

def fixture(name)
  File.open('spec/fixtures/' + name).read
end

require "bundler/setup"
Bundler.require(:default)
require "minitest/autorun"
require "minitest/pride"
require "webmock/minitest"
require "json"

def stub_get(path)
  stub_request(:get, Regexp.new(Moves::Client::ENDPOINT + path))
end

def fixture(name)
  File.open('test/fixtures/' + name).read
end

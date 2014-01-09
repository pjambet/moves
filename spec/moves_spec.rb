require "spec_helper"
require "date"

describe Moves::Client do
  subject(:client) { Moves::Client.new('XXX') }
  context 'sanity text' do
    it { expect(client).not_to be_nil }
  end

  describe '#profile' do
    stub_get('user/profile').to_return(:body => fixture('profile.json'))
    it { expect(client.profile).to be_valid }
  end
end

# class TestMoves < Minitest::Test

#   def setup
#     @client = Moves::Client.new(ENV["ACCESS_TOKEN"])
#     @today = Time.now.strftime("%Y-%m-%d")
#     @day = "2013-06-20"
#     @week = "2013-W25"
#     @month = "2013-06"
#     @from_to = {:from => "2013-06-20", :to => "2013-06-23"}
#     @time = Time.now
#     @date_time = DateTime.now
#     @date = Date.today
#     @from_to_time = {:from => @time - 86400, :to => @time}
#     @time_range = (@time - 86400)..@time

#     stub_get('user/summary/daily').to_return(:body => fixture('daily_summary.json'))
#     stub_get('user/activities/daily').to_return(:body => fixture('daily_activity.json'))
#     stub_get('user/places/daily').to_return(:body => fixture('daily_place.json'))
#     stub_get('user/storyline/daily').to_return(:body => fixture('daily_storyline.json'))
#   end

#   def test_profile
#     profile = @client.profile
#     assert_kind_of Hash, profile
#   end

#   def test_daily_summary
#     assert_works @client.daily_summary
#   end

#   def test_daily_summary_day
#     assert_works @client.daily_summary(@day)
#   end

#   def test_daily_summary_time
#     assert_works @client.daily_summary(@time)
#   end

#   def test_daily_summary_date_time
#     assert_works @client.daily_summary(@date_time)
#   end

#   def test_daily_summary_date
#     assert_works @client.daily_summary(@date)
#   end

#   def test_daily_summary_week
#     assert_works @client.daily_summary(@week)
#   end

#   def test_daily_summary_month
#     assert_works @client.daily_summary(@month)
#   end

#   def test_daily_summary_from_to
#     assert_works @client.daily_summary(@from_to)
#   end

#   def test_daily_summary_from_to_time
#     assert_works @client.daily_summary(@from_to_time)
#   end

#   def test_daily_summary_time_range
#     assert_works @client.daily_summary(@time_range)
#   end

#   def test_daily_activities
#     assert_works @client.daily_activities
#   end

#   def test_daily_activities_day
#     assert_works @client.daily_activities(@day)
#   end

#   def test_daily_activities_week
#     assert_works @client.daily_activities(@week)
#   end

#   def test_daily_activities_from_to
#     assert_works @client.daily_activities(@from_to)
#   end

#   def test_daily_places
#     assert_works @client.daily_places
#   end

#   def test_daily_places_day
#     assert_works @client.daily_places(@day)
#   end

#   def test_daily_places_week
#     assert_works @client.daily_places(@week)
#   end

#   def test_daily_places_from_to
#     assert_works @client.daily_places(@from_to)
#   end

#   def test_daily_storyline
#     assert_works @client.daily_storyline
#   end

#   def test_daily_storyline_day
#     assert_works @client.daily_storyline(@day)
#   end

#   def test_daily_storyline_week
#     assert_works @client.daily_storyline(@week)
#   end

#   def test_daily_storyline_from_to
#     assert_works @client.daily_storyline(@from_to)
#   end

#   def test_daily_storyline_track_points
#     assert_works @client.daily_storyline(:trackPoints => true)
#   end

#   def test_daily_storyline_track_points_day
#     assert_works @client.daily_storyline(@day, :trackPoints => true)
#   end

#   protected

#   # TODO better tests

#   def assert_works(actual)
#     assert_operator actual.size, :>=, 1
#   end

# end

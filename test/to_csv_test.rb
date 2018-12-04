require 'test_helper'

class ToCsv::Test < ActiveSupport::TestCase
  def test_to_csv_returns_csv_data_for_relation
    assert_equal User.all.to_csv, expected_csv_data
  end

  private
    def expected_csv_data
      "id,first_name,last_name,email,role,created_at,updated_at\n" \
      "1,Peter,Phillips,peter@phillips.com,admin,#{Date.parse("2019-01-01").beginning_of_day},#{Date.parse("2019-01-01").beginning_of_day}\n" \
      "2,John,Smith,john@smith.com,guest,#{Date.parse("2019-01-01").beginning_of_day},#{Date.parse("2019-01-01").beginning_of_day}\n" \
      "3,Stephanie,O'Brien,stephanie@obrien.com,manager,#{Date.parse("2019-01-01").beginning_of_day},#{Date.parse("2019-01-01").beginning_of_day}\n"
    end
end

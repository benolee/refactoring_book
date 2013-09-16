require "test_helper"

require File.expand_path("../../../target/refactoring-1.jar", __FILE__)
java_import "refactoring.Movie"

class MovieTest < Minitest::Test
  def setup
    @movie = Movie.new("A Walk in the Clouds", 0)
  end

  def test_price_code
    assert_equal @movie.price_code, 0
  end

  def test_title
    assert_equal @movie.title, "A Walk in the Clouds"
  end
end

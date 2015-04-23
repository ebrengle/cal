require_relative 'helper'

class TestCalIntegration < MiniTest::Test

  def test_helper_arguments
    output = `./cal 12/13 2004`
    expected = <<EOS

EOS
  assert_equal expected, output
  end
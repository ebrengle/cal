require_relative 'helper'

class TestCalIntegration < MiniTest::Test

  def test_helper_arguments
    output = `./cal 01/01 2012`
    expected = <<EOS

EOS
  assert_equal expected, output
  end
end
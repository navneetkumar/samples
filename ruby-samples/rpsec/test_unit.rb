require 'test/unit'

class SampleTest < Test::Unit::TestCase

  def test_assertion
    assert(true,"It was false")
    assert_equal(2,2)
    assert_equal(2,2)
    assert_instance_of(String,'foo')
  end

  def test_errors
    #assert_raise do
    #  "will fail becasue no error was thrown"
    #end

    assert_raise NameError do
      raise ScriptError
    end
  end


end

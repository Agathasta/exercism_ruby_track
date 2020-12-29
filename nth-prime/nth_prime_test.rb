# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'nth_prime'
# 2, 3, 5, 7, 11, 13, 17, 19

# Common test data version: 2.1.0 4a3ba76
class NthPrimeTest < Minitest::Test
  def test_first_prime
    # skip
    assert_equal 2, Prime.nth(1)
  end

  def test_second_prime
    # skip
    assert_equal 3, Prime.nth(2)
  end

  def test_third_prime
    # skip
    assert_equal 5, Prime.nth(3)
  end

  def test_forth_prime
    # skip
    assert_equal 7, Prime.nth(4)
  end

  def test_fifth_prime
    # skip
    assert_equal 11, Prime.nth(5)
  end

  def test_sixth_prime
    # skip
    assert_equal 13, Prime.nth(6)
  end

  def test_seventh_prime
    # skip
    assert_equal 17, Prime.nth(7)
  end

  def test_big_prime
    # skip
    assert_equal 104_743, Prime.nth(10_001)
  end

  def test_there_is_no_zeroth_prime
    # skip
    assert_raises(ArgumentError) do
      Prime.nth(0)
    end
  end
end

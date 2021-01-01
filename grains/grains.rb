class Grains
  def self.square(sqr)
    raise ArgumentError unless (1..64).include? sqr

    2**(sqr - 1)
  end

  def self.total
    2**64 - 1
  end

  # -- iterative
  def self.square_i(sqr)
    (1..sqr).reduce {|sum, s| sum * 2}
    # a = 1
    # b = 2
    # (sqr - 1).times do
    #   a = b
    #   b = 2 * a
    # end
    # sqr == 1 ? 1 : a
  end

  def self.total_i
    (1..64).reduce { |acc, sqr| acc + square(sqr) }
  end

  # -- recursive
  def self.square_r(sqr)
    raise ArgumentError unless (1..64).include? sqr

    sqr == 1 ? sqr : 2 * square(sqr - 1)
  end

  # -- speed tests
  require 'benchmark'

  sqr = 61
  n = 100_000

  Benchmark.bmbm do |x|
    x.report('basic') { n.times { square(sqr) } }
    x.report('iterative') { n.times { square_i(sqr) } }
    x.report('recursive') { n.times { square_r(sqr) } }
  end

  # RESULTS
  # n = 1
  # CL > grains % ruby grains.rb
  #               user     system      total        real
  # basic       0.000029   0.000002   0.000031 (  0.000025)
  # iterative   0.000015   0.000002   0.000017 (  0.000014)
  # recursive   0.000008   0.000001   0.000009 (  0.000006)

  # n = 100_000
  # CL > grains % ruby grains.rb
  #               user     system      total        real
  # basic       0.024503   0.000065   0.024568 (  0.024708)
  # iterative   0.344446   0.000490   0.344936 (  0.345470)
  # recursive   0.039463   0.000163   0.039626 (  0.039774)

  # => ???
end

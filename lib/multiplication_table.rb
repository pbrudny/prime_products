require 'matrix'
require 'lib/table'

#
# This class is used to calculate products of elements from given array
#
class MultiplicationTable < Table
  attr_reader :vector

  def initialize(values, options = {})
    @vector = create_vector(values)
    super(multiplication_array(options))
  end

  private

  def empty_first_cell(array)
    array[0][0] = '--'
    array
  end

  def create_vector(values_array)
    Vector.elements(values_array)
  end

  #
  # Multiply each by each elements from given vectors.
  # When only one vector is given than it gets calculated by itself.
  # Note: It returns Matrix not Array.
  def multiply_vectors(vector1, vector2 = vector1)
    vector1 * vector2.covector
  end

  def multiplication_array(options)
    table = multiplication_matrix.to_a
    if options[:empty_first_cell]
      empty_first_cell table
    else
      table
    end
  end

  def multiplication_matrix
    multiply_vectors(vector)
  end
end
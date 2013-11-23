require 'terminal-table'

#
# This class is for displaying in console two dimensional array
# as formatted table
#
class Table
  attr_reader :array_2_dim

  def initialize(two_dimensional_array)
    @array_2_dim = two_dimensional_array
  end

  def formatted
    Terminal::Table.new :rows => array_2_dim
  end
end
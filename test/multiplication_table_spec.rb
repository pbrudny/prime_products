require 'test/test_helper'
require 'lib/multiplication_table'

describe MultiplicationTable do
  describe 'when gets one dimensional array' do
    before do
      @multi_table = MultiplicationTable.new([1,2,3])
    end

    it 'creates 2 dimensional array 3x3' do
      @multi_table.array_2_dim.must_be_kind_of Array
      @multi_table.array_2_dim.count.must_equal 3
      @multi_table.array_2_dim[0].count.must_equal 3
    end

    it 'multiplies each by each element from given array' do
      @multi_table.array_2_dim.must_equal [[1, 2, 3], [2, 4, 6], [3, 6, 9]]
    end
  end
end
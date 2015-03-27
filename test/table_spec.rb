require_relative 'test_helper'
require_relative '../lib/table'

describe Table do
  describe 'when gets 2 dimensional array with numbers' do
    before do
      @multi_table = Table.new([[1,1,1],[2,2,2]])
    end

    it 'displays formatted table' do
      @multi_table.formatted.must_be_kind_of Terminal::Table
    end
  end
end
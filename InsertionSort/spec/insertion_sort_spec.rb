require 'insertion_sort'

RSpec.describe InsertionSort do
  subject { InsertionSort.new(array).sort }

  describe 'sort' do
    context '[2, 1, 45, 234, 3]' do
      let(:array) { [2, 1, 45, 234, 3] }
      it { is_expected.to eq [1, 2, 3, 45, 234] }
    end

    context '[56, 45, 10044, 2, 3, 87, 2, 5]' do
      let(:array) { [56, 45, 10044, 2, 3, 87, 2, 5] }
      it { is_expected.to eq [2, 2, 3, 5, 45, 56, 87, 10044] }
    end
  end
end

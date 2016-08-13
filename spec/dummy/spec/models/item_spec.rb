require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#rm' do
    context '' do
      it '205が返る' do
        item = Item.new(value: 20.5, repeat_count: 10)
        expect(item.rm).to eq 205
      end
    end
  end
end

require 'rails_helper'

RSpec.describe Idea, type: :model do
  before do
    @idea = FactoryBot.build(:idea)
  end

  describe 'idea新規作成' do
    context '新規作成成功' do
      it 'titleが空でない時に保存できる' do
        expect(@idea).to be_valid
      end

      it 'idea_1が空でない時に保存できる' do
        expect(@idea).to be_valid
      end

      it 'idea_2が空でない時に保存できる' do
        expect(@idea).to be_valid
      end

      it 'idea_3が空でない時に保存できる' do
        expect(@idea).to be_valid
      end

      it 'genre_idが1でない時に保存できる' do
        expect(@idea).to be_valid
      end
    end

    context '新規作成失敗' do
      it 'titleが空だと保存できない' do
        @idea.title = ''
        @idea.valid?
        expect(@idea.errors.full_messages).to include("Title can't be blank")
      end

      it 'idea_1が空だと保存できない' do
        @idea.idea_1 = ''
        @idea.valid?
        expect(@idea.errors.full_messages).to include("Idea 1 can't be blank")
      end

      it 'idea_2が空だと保存できない' do
        @idea.idea_2 = ''
        @idea.valid?
        expect(@idea.errors.full_messages).to include("Idea 2 can't be blank")
      end

      it 'idea_3が空だと保存できない' do
        @idea.idea_3 = ''
        @idea.valid?
        expect(@idea.errors.full_messages).to include("Idea 3 can't be blank")
      end

      it 'genre_idが空だと保存できない' do
        @idea.genre_id = ''
        @idea.valid?
        expect(@idea.errors.full_messages).to include("Genre can't be blank")
      end

      it 'genre_idが1だと保存できない' do
        @idea.genre_id = '1'
        @idea.valid?
        expect(@idea.errors.full_messages).to include("Genre must be other than 1")
      end
    end
  end
end

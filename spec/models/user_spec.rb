require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規登録' do
    context '新規登録成功' do
      it 'nicknameが空でない時に登録できる' do
        expect(@user).to be_valid
      end

      it 'emailが空でない時に保存できる' do
        expect(@user).to be_valid
      end

      it 'passwordが空でない時に保存できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録失敗' do
      it 'nicknameが空だと保存できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it 'nicknameが重複すると保存できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.nickname = @user.nickname
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Nickname has already been taken")
      end

      it 'emailが空だと保存できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it 'emailが重複すると保存できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end

      it 'emailに@が含まれていないと保存できない' do
        @user.email = 'testgmail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end

      it 'passwordが空だと保存できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'passwordが6文字未満だと保存できない' do
        @user.password = 'abc12'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
    end
  end
end

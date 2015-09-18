require 'rails_helper'

RSpec.describe User, :type => :model do
  describe '#nickname' do
    context 'more than 6 letters' do
      it 'not valid' do
        user = build(:user, nickname: '1234567890')
        user.valid?
        expect(user.errors[:nickname]).to be_present
      end
    end
  end
  describe '#nickname' do
    context 'nil_check' do
      it 'not valid' do
        user = build(:user, nickname: '')
        user.valid?
        expect(user.errors[:nickname]).to be_present
      end
    end
  end
  describe '#email' do
    context 'nil_check' do
      it 'not valid' do
        user = build(:user, email: '')
        user.valid?
        expect(user.errors[:email]).to be_present
      end
    end
  end
  describe '#email' do
    context 'duplicate_check' do
      it 'not valid' do
        create(:user, email: 'duplicate@test.com')
        user = build(:user, email: 'duplicate@test.com')
        user.valid?
        expect(user.errors[:email]).to include('has already been taken')
      end
    end
  end
end

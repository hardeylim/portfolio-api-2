require 'rails_helper'

RSpec.describe User, type: :model do


  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_length_of(:email).is_at_most(255) }
    it { should allow_value('user@example.com').for(:email) }
    it { should_not allow_value('invalid').for(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
  end

  describe '#full_name' do
    let(:user) { create(:user) }
    let(:full_name) { "#{user.first_name} #{user.last_name}" }

    it 'returns the full name of user' do
      expect(user.full_name).to eq(full_name)
    end
  end
end

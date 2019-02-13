require 'rails_helper'

describe User do
  describe '#follow' do
    let(:user) { create(:user) }
    let(:a_friend) { create(:user) }

    it 'should change user followers count when a friend of user follow user' do
      expect { a_friend.follow(user) }.to change { user.followers.count }.by 1
    end
  end
end
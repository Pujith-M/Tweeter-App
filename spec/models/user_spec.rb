require 'rails_helper'

describe User do
  describe '#follow' do
    let(:user) { create(:user) }
    let(:a_friend) { create(:user) }

    it 'should increase user followers count when a friend follow user' do
      expect { a_friend.follow(user) }.to change { user.followers.count }.by 1
    end
  end

  describe '#unfollow' do
    let(:user) { create(:user) }
    let(:follower) { create(:user) }

    it 'should decrease user followers count when a follower unfollow user' do
      follower.follow(user)
      expect { follower.unfollow(user) }.to change { user.followers.reload.count }.by -1
    end
  end
end
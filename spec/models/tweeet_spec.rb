require 'rails_helper'

describe Tweeet do
  describe 'validations' do
    let(:tweeet) { create(:tweeet)}

    it 'should validate a tweet' do
      expect(tweeet.valid?).to be_truthy
    end
  end
end
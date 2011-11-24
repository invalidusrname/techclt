require 'spec_helper'

describe User do
  describe 'visible scope' do
    it "should have a visible scope" do
      User.should respond_to(:visible)
    end

    it "should return only visible users" do
      invisible = Factory(:user, :visible => false)
      visible = Factory(:visible_user)

      User.visible.should include(visible)
      User.visible.should_not include(invisible)
    end

    it "should return them ordered by date created" do
      tomorrow = Factory(:visible_user, :created_at => Date.tomorrow)
      today = Factory(:visible_user, :created_at => Date.today)
      yesterday = Factory(:visible_user, :created_at => Date.yesterday)

      User.visible.should eq([tomorrow, today, yesterday])
    end
  end 
end

require 'rails_helper'

RSpec.describe "old_systems/index", :type => :view do
  before(:each) do
    assign(:old_systems, [
      OldSystem.create!(
        :username => "Username",
        :version => "Version"
      ),
      OldSystem.create!(
        :username => "Username",
        :version => "Version"
      )
    ])
  end

  it "renders a list of old_systems" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Version".to_s, :count => 2
  end
end

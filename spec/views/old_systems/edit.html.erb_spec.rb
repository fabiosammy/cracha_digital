require 'rails_helper'

RSpec.describe "old_systems/edit", :type => :view do
  before(:each) do
    @old_system = assign(:old_system, OldSystem.create!(
      :username => "MyString",
      :version => "MyString"
    ))
  end

  it "renders the edit old_system form" do
    render

    assert_select "form[action=?][method=?]", old_system_path(@old_system), "post" do

      assert_select "input#old_system_username[name=?]", "old_system[username]"

      assert_select "input#old_system_version[name=?]", "old_system[version]"
    end
  end
end

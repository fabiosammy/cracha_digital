require 'rails_helper'

RSpec.describe "old_systems/new", :type => :view do
  before(:each) do
    assign(:old_system, OldSystem.new(
      :username => "MyString",
      :version => "MyString"
    ))
  end

  it "renders new old_system form" do
    render

    assert_select "form[action=?][method=?]", old_systems_path, "post" do

      assert_select "input#old_system_username[name=?]", "old_system[username]"

      assert_select "input#old_system_version[name=?]", "old_system[version]"
    end
  end
end

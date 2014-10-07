require 'rails_helper'

RSpec.describe "old_systems/show", :type => :view do
  before(:each) do
    @old_system = assign(:old_system, OldSystem.create!(
      :username => "Username",
      :version => "Version"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Version/)
  end
end

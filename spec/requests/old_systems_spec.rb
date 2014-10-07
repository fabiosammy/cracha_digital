require 'rails_helper'

RSpec.describe "OldSystems", :type => :request do
  describe "GET /old_systems" do
    it "works! (now write some real specs)" do
      get old_systems_path
      expect(response).to have_http_status(200)
    end
  end
end

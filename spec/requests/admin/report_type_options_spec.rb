require 'rails_helper'

RSpec.describe "Admin::ReportTypeOptions", type: :request do

  describe "GET /admin/report_type_options" do
    it "works! (now write some real specs)" do
      get admin_report_type_options_path
      expect(response).to have_http_status(200)
    end
  end
end

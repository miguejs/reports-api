require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe Admin::ReportTypesController, type: :controller do
  let(:valid_attributes){ attributes_for(:report_type) }

  before do
    login_with create( :admin )
  end

  describe "GET #index" do
    it "returns a success response" do
      report_type = create(:report_type)
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      report_type = create(:report_type)
      get :show, params: {id: report_type.to_param}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      report_type = create(:report_type)
      get :edit, params: {id: report_type.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ReportType" do
        expect {
          post :create, params: {report_type: valid_attributes}
        }.to change(ReportType, :count).by(1)
      end

      it "redirects to the created report_type" do
        post :create, params: {report_type: valid_attributes}
        expect(response).to redirect_to(admin_report_type_url(ReportType.last))
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {report_type: invalid_attributes}
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested report_type" do
        report_type = create(:report_type)
        put :update, params: {id: report_type.to_param, report_type: new_attributes}
        report_type.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the report_type" do
        report_type = create(:report_type)
        put :update, params: {id: report_type.to_param, report_type: valid_attributes}
        expect(response).to redirect_to(admin_report_type_url(report_type))
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        report_type = create(:report_type)
        put :update, params: {id: report_type.to_param, report_type: invalid_attributes}
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested report_type" do
      report_type = create(:report_type)
      expect {
        delete :destroy, params: {id: report_type.to_param}
      }.to change(ReportType, :count).by(-1)
    end

    it "redirects to the report_types list" do
      report_type = create(:report_type)
      delete :destroy, params: {id: report_type.to_param}
      expect(response).to redirect_to(admin_report_types_url)
    end
  end

end

 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/bands", type: :request do
  # Band. As you add validations to Band, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Band.create! valid_attributes
      get bands_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      band = Band.create! valid_attributes
      get band_url(band)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_band_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      band = Band.create! valid_attributes
      get edit_band_url(band)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Band" do
        expect {
          post bands_url, params: { band: valid_attributes }
        }.to change(Band, :count).by(1)
      end

      it "redirects to the created band" do
        post bands_url, params: { band: valid_attributes }
        expect(response).to redirect_to(band_url(Band.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Band" do
        expect {
          post bands_url, params: { band: invalid_attributes }
        }.to change(Band, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bands_url, params: { band: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested band" do
        band = Band.create! valid_attributes
        patch band_url(band), params: { band: new_attributes }
        band.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the band" do
        band = Band.create! valid_attributes
        patch band_url(band), params: { band: new_attributes }
        band.reload
        expect(response).to redirect_to(band_url(band))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        band = Band.create! valid_attributes
        patch band_url(band), params: { band: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested band" do
      band = Band.create! valid_attributes
      expect {
        delete band_url(band)
      }.to change(Band, :count).by(-1)
    end

    it "redirects to the bands list" do
      band = Band.create! valid_attributes
      delete band_url(band)
      expect(response).to redirect_to(bands_url)
    end
  end
end
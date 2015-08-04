require 'rails_helper'

RSpec.describe PlacesController, type: :controller do

  describe "GET index" do
    context 'valid params' do
      it "returns http success with lat and long" do
        get :index, {lat: 1, long: 1}
        expect(response).to be_success
      end

      it "returns http success with lat, long and name" do
        get :index, {lat: 1, long: 1, name: 'test'}
        expect(response).to be_success
      end
    end

    context 'invalid params' do
      it 'should response with status 404' do
        get :index
        expect(response.status).to eq 404
      end
    end
  end
end

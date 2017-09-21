require 'rails_helper'

RSpec.describe Api::V1::PagesController, type: :controller do

  describe 'GET #index' do
    before do
      raw_post :index
    end

    context 'index' do
      it 'respond with 200 code' do
        expect(response.code).to eql 200
      end

      it 'respond with content type JSON' do
        expect(response.content_type).to eql Mime[:json]
      end
    end
  end
end

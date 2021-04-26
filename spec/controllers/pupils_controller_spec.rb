
require 'rails_helper'

RSpec.describe PupilsController, type: :controller do

  describe 'GET #index' do
    let!(:pupils) { create_list :pupil, 5 }

    subject do
      get :index, format: :html
      response
    end

    it 'show all pupils' do
      is_expected.to be_successful
      is_expected.to render_template :index
    end
  end

    describe 'GET #show' do
      let!(:pupil) { create :pupil }

      subject do
      get :show, params: { id: pupil.id }
    end

    it 'show single pupil' do
      is_expected.to be_successful
      is_expected.to render_template :show
    end
    end

  describe 'POST #create' do
    let!(:pupil) { create(:pupil) }

    let(:params) do
      {
          klass: pupil.klass,
          name: pupil.name,
          food: pupil.food,
          presence: pupil.presence,
          pupil: Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/1.jpg'))
      }
    end

    subject do
      post :create, params: params
      response
    end

    context 'wih success' do
      it 'saves player' do
        is_expected.to be_successful
      end
    end
  end
end
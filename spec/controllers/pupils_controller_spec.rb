
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

end
require 'spec_helper'

describe PhotosController do
  describe :index do
    let!(:photo) { create :photo }
    let(:action) { get :index }

    before { action }

    it { should respond_with :success }
    it { should render_template :index }
    it { should render_with_layout :application }

    it 'assigns all photos' do
      expect(assigns(:photos)).to eq(Photo.all)
    end
  end
end

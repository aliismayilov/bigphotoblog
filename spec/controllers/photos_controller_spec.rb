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

  describe :new do
    let(:action) { get :new }

    it_behaves_like :authentication_is_required

    context 'logged in' do
      let!(:user) { create :user }

      before do
        sign_in user
        action
      end

      it { should respond_with :success }
      it { should render_template :new }
      it { should render_with_layout :application }
    end
  end

  describe :create do
    let(:action) { post :create, params }
    let(:params) { {} }

    it_behaves_like :authentication_is_required

    context 'logged in' do
      let!(:user) { create :user }
      let(:params) { {'url' => 'https://s3.amazonaws.com/tut-s3-dev/uploads%2F1391622303039-w528j37wiwm-a59d05844384432a05f46d348ed849e3%2F1.jpg'} }

      before do
        @request.accept = "application/javascript"
        @request.env["devise.mapping"] = Devise.mappings[:user]
        sign_in user
        action
      end

      it 'persists photo of a user' do
        expect(user.photos.count).to eql(1)
      end
    end
  end
end

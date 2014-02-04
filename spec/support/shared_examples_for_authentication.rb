shared_examples :authentication_is_required do
  context 'not logged in' do
    before { action }

    it { should redirect_to new_user_session_path }
  end
end

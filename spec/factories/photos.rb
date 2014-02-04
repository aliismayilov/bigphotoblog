# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    user

    upload do
      extend ActionDispatch::TestProcess
      fixture_file_upload('spec/fixtures/images/image.jpg', 'image/jpg')
    end
  end
end

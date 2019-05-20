FactoryBot.define do
  factory :user do
    sequence :email do |n|
       "dummyEmail#{n}@gmail.com"
    end
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end

  factory :gram do
    message { "hello" }
     picture {Rack::Test::UploadedFile.new('spec/fixtures/picture.png', 'image/png')}


    association :user
  end
end

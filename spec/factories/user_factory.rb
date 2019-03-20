FactoryBot.define do
  
  factory :user do
    username { "Joe" }
    email { "joe@gmail.com" }
    password { "blah" }
    password { "mysecurepassword" }
  end

end
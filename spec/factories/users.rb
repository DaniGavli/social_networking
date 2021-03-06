FactoryBot.define do
    factory :user do
        name { "Dani" }
        email { "user#{rand(1..100)}@teste.com" }
        phone { "51992950259" }
        avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png')}
        password { "123456" }
    end 
end

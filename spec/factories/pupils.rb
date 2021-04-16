
 FactoryBot.define do 
   factory :pupil do
	   klass     { Faker::Name.name }
     name      { Faker::Name.name }
     food      { [true, false].sample }
     presence  { [true, false].sample }

  	
    transient do
      picture { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/1.jpg')) }
    end

    after(:create) do |pupil, option|
      pupil.picture.attach(option.picture)
    end
  end
end
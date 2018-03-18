namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "test name",
                 email: "example@railstutorial.org",
                 password: "hogehoge")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password)
    end
  end
end
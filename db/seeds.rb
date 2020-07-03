# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Cohort.destroy_all
User.destroy_all
ProfileLanguage.destroy_all
Recommendation.destroy_all
Language.destroy_all
Profile.destroy_all
# Clear the database

cohort1 = Cohort.create(name: "Yale-Flatiron 2020")
cohort2 = Cohort.create(name: "Yale-Flatiron 2019")
cohort3 = Cohort.create(name: "Yale-Flatiron 2018")
cohort4 = Cohort.create(name: "Yale-Flatiron 2017")
# # in seed file, if we want to create encrypted password, we have to use password: ... , password_confirmation: ...
# user1 = User.create(name: "user1", cohort_id: cohort1.id, password: '123', password_confirmation: '123')
# user2 = User.create(name: "user2", cohort_id: cohort1.id, password: '321', password_confirmation: '321')
# user3 = User.create(name: "user3", cohort_id: cohort2.id, password: '111', password_confirmation: '111')
# user4 = User.create(name: "user4", cohort_id: cohort1.id, password: '222', password_confirmation: '222')
# user5 = User.create(name: "user5", cohort_id: cohort3.id, password: '333', password_confirmation: '333')
# user6 = User.create(name: "user6", cohort_id: cohort3.id, password: '444', password_confirmation: '444')

#generate 20 users
(1..10).each do |id|
    User.create(
        id: id,
        username: Faker::Name.name,
        password: "password",
        password_confirmation: "password"
        )
end 



   

language1 = Language.create(name: "Python")
language2 = Language.create(name: "Ruby")
language3 = Language.create(name: "Javascript")
language4 = Language.create(name: "HTML")
language5 = Language.create(name: "C")
language6 = Language.create(name: "SQL")

languages = [language1.id, language2.id, language3.id, language4.id,
language5.id, language6.id]


# # Add user4 to the list of users that recommend user3;
# # In other words, user4 recommends user3, user3 is recommended by user4
# # This is the equivalent of user4.recommendees << user3



# profile1 = Profile.create(age: 13, bio: "this is profile1", major: "cs", user_id: User.all.sample.id)
# profile2 = Profile.create(age: 23, bio: "this is profile2", major: "english", user_id: User.all.sample.id)
# profile3 = Profile.create(age: 43, bio: "this is profile3", major: "cs", user_id: User.all.sample.id)

(1..10).each do |id|
    p = Profile.create(
        name: Faker::Name.name,
        age: (18..100).to_a.sample,
        bio: Faker::Hipster.paragraph,
        city: Faker::Nation.capital_city,
        major: Faker::Educator.subject,
        university: Faker::Educator.university,
        cohort_id: cohort1.id,
        user_id: User.all.sample.id,
        # image: "../download.jpeg",
        language_ids: rand(1..6).times.map { languages.sample }
        )
    s = rand(1..10).to_s + ".png"
    p.image.attach(io: File.open(Rails.root + 'app/assets/images/' + s), filename: s)
end 

(1..10).each do |id|
    p = Profile.create(
        name: Faker::Name.name,
        age: (18..100).to_a.sample,
        bio: Faker::Hipster.paragraph,
        city: Faker::Nation.capital_city,
        major: Faker::Educator.subject,
        university: Faker::Educator.university,
        cohort_id: cohort2.id,
        user_id: User.all.sample.id,
        # image: "../download.jpeg",
        language_ids: rand(1..6).times.map { languages.sample }
    )
    s = rand(1..10).to_s + ".png"
    p.image.attach(io: File.open(Rails.root + 'app/assets/images/' + s), filename: s)
end 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cohort.destroy_all
User.destroy_all
UserLanguage.destroy_all
Recommendation.destroy_all
Language.destroy_all
Profile.destroy_all
# Clear the database

cohort1 = Cohort.create(name: "cohort1")
cohort2 = Cohort.create(name: "cohort2")
cohort3 = Cohort.create(name: "cohort3")
cohort4 = Cohort.create(name: "cohort4")

user1 = User.create(name: "user1", cohort_id: cohort1.id)
user2 = User.create(name: "user2", cohort_id: cohort1.id)
user3 = User.create(name: "user3", cohort_id: cohort2.id)
user4 = User.create(name: "user4", cohort_id: cohort1.id)
user5 = User.create(name: "user5", cohort_id: cohort3.id)
user6 = User.create(name: "user6", cohort_id: cohort3.id)

language1 = Language.create(name: "language1")
language2 = Language.create(name: "language2")
language3 = Language.create(name: "language3")

user1.languages << language1
user1.languages << language2
user2.languages << language3
user3.recommenders << user4
# Add user4 to the list of users that recommend user3;
# In other words, user4 recommends user3, user3 is recommended by user4
# This is the equivalent of user4.recommendees << user3

user4.recommenders << user1
user1.recommenders << user2
user1.recommenders << user3
user1.recommenders << user4

profile1 = Profile.create(age: 13, bio: "this is profile1", major: "cs", user_id: user1.id)
profile2 = Profile.create(age: 23, bio: "this is profile2", major: "english", user_id: user1.id)
profile3 = Profile.create(age: 43, bio: "this is profile3", major: "cs", user_id: user2.id)

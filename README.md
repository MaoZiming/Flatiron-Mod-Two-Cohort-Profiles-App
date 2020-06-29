# README

Update by Ziming June 29

- Created Model, migration, and seed files

- I have created models for Cohort, Language, Profile, Recommendation, User, UserLanguage  Language, User are in many-to-many relationship, the joiner class is UserLanguage
- User belongs to a Cohort
- Profile belongs to a User, a User can have multiple Profiles (for example, one profile for Flatiron, one profile for Yale)

************

- The self-referential recommendation model is working. I have written explanation as comments in the model files. Please checkout recommendation.rb and user.rb! 

************

- Password!
- I just follows the using has_secure lab
- The password field is named password_digest
- When we create the user in the seed file, we need to use password: "123", password_confirmation: '123" 
to create encrypted password!
See also at https://stackoverflow.com/questions/30894508/create-user-with-encrypted-password-with-dbseed
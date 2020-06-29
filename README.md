# README

Update by Ziming June 29

- Created Model, migration, and seed files

- I have created models for Cohort, Language, Profile, Recommendation, User, UserLanguage  Language, User are in many-to-many relationship, the joiner class is UserLanguage
- User belongs to a Cohort
- Profile belongs to a User, a User can have multiple Profiles (for example, one profile for Flatiron, one profile for Yale)

************

- The self-referential recommendation model is working. I have written explanation as comments in the model files. Please checkout recommendation.rb and user.rb! 

************

- Some thing missing: the password field
- I am not sure how to include the encrypted password field to the user
- Like we can't just store the password as plain strings right?
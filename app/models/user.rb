class User < ApplicationRecord
    has_many :user_languages
    has_many :languages, through: :user_languages
    belongs_to :cohort
    has_many :profiles

    # User being the Recommender
    has_many :recommendee_instances, foreign_key: :recommender_id, class_name: 'Recommendation'
    has_many :recommendees, through: :recommendee_instances

    # User being the Recommendee
    has_many :recommender_instances, foreign_key: :recommendee_id, class_name: 'Recommendation'
    has_many :recommenders, through: :recommender_instances

    # How I understand this:
    # The User class has many :recommendee_instances, these recommendee_instances have foreign_key 
    # of :recommender_id, since each recommendee is paired with a recommender; 
    
    # Think of :recommendee_instances as a joiner class between :users and :recommendees
    # And because we don't actually have a separate :recommendee and :recommender classes, we have all the extra syntax

    # But honestly, I won't worry too much about self-referential association. 
    
end

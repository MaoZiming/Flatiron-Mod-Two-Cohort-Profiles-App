class Recommendation < ApplicationRecord
    
    belongs_to :recommendee, class_name: 'User', foreign_key: "recommendee_id"
    belongs_to :recommender, class_name: 'User', foreign_key: "recommender_id"

    # How I understand this:
    # Many-to-many relationship 
    # Recommender - (Recommendation) - Recommendee 
    # We don't need to create two separate classes for Recommender and Recommendee. 
    # The Recommendation class has two fields: recommendee_id, and recommender_id (see the schema file). We just need to match these ids with :recommender and :recommendee respectively. 
    # Both :recommendee, and :recommender are of User class. 

end

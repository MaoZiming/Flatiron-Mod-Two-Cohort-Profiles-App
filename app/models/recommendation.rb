class Recommendation < ApplicationRecord
      
    belongs_to :recommendee, class_name: 'Profile', foreign_key: "recommendee_id"
    belongs_to :recommender, class_name: 'Profile', foreign_key: "recommender_id"

    # How I understand this:
    # Many-to-many relationship 
    # Recommender - (Recommendation) - Recommendee 
    # We don't need to create two separate classes for Recommender and Recommendee. 
    # The Recommendation class has two fields: recommendee_id, and recommender_id (see the schema file). We just need to match these ids with :recommender and :recommendee respectively. 
    # Both :recommendee, and :recommender are of User class. 

    
    def self.search_recommendation(recommender, recommendee)

        return Recommendation.all.find do |recommendation|
            recommendation.recommender == recommender && recommendation.recommendee == recommendee
        end 
    end

    def self.set_recommendation(recommender, recommendee, content)
        Recommendation.search_recommendation(recommender, recommendee).content = content
    end

end

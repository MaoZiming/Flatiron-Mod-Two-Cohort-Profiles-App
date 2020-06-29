class Recommendation < ApplicationRecord
    
    belongs_to :recommendee, class_name: 'User', foreign_key: "recommendee_id"
    belongs_to :recommender, class_name: 'User', foreign_key: "recommender_id"

end

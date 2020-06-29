class User < ApplicationRecord
    has_many :user_languages
    has_many :languages, through: :user_languages
    belongs_to :cohort

    has_many :recommended_users, foreign_key: :recommender_id, class_name: 'Recommendation'
    has_many :recommendees, through: :recommended_users, source: :recommendee

    has_many :recommender_users, foreign_key: :recommendee_id, class_name: 'Recommendation'
    has_many :recommenders, through: :recommender_users, source: :recommender

    has_many :profiles
end

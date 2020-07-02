class Cohort < ApplicationRecord
    has_many :profiles

    def student_number
        self.profiles.size
    end
end

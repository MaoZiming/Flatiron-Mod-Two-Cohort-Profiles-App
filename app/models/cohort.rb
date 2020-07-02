class Cohort < ApplicationRecord
    has_many :profiles

    def student_number
        self.profiles.select {|profile| !profile.name.empty? }.size
    end
end

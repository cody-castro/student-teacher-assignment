class Teacher < ActiveRecord::Base
    attr_reader :last_name, :grade_level, :years_of_experience
    @@all = []

    def initialize(last_name,grade_level,years_of_experience)
        @last_name = last_name
        @grade_level = grade_level
        @years_of_experience = years_of_experience
        @@all << self
    end

    def tenure
        self.years_of_experience > 5    
    end


    def self.all
        @@all
    end

end
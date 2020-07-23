class Student < ActiveRecord::Base
    attr_reader :first_name, :last_name, :grade_level
    @@all = []

    def initialize(first_name, last_name, grade_level)
        @first_name = first_name
        @last_name = last_name
        @grade_level = grade_level
        @@all << self
    end

    def full_name
        name = []
      name << self.first_name 
      name << self.last_name
      name
    end

    def all_in_grade(grade)
        self.all.select {|student| student.grade_level == grade}
    end

    def self.all
        @@all
    end


end
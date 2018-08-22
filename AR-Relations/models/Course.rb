class Course < ActiveRecord::Base
    belongs_to :instructor
    has_many :tas
    has_many :courses_students
    has_many :students, through: :courses_students
end
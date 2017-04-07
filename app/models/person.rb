class Person < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  def to_s
    return first_name + ' ' + last_name
  end
end

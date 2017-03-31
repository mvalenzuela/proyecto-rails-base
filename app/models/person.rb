class Person < ApplicationRecord
  has_many :enrollements, through: :enrollments

  def to_s
    return first_name + ' ' + last_name
  end
end

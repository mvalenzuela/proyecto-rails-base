class Course < ApplicationRecord
  belongs_to :teacher, class_name: 'Person', foreign_key: 'person_id'
end

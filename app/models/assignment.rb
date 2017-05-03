class Assignment < ApplicationRecord
  belongs_to :course

  validates :title, length: { minimum: 3,  maximum: 30 }, presence: true
  validates :statement, presence: true
end

class Result < ApplicationRecord
  has_many :result_units

  belongs_to :exercise
  belongs_to :user
  belongs_to :workout
end
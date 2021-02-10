class Employee < ApplicationRecord
  validates :name, presence: true
  validates :role, presence: true
end

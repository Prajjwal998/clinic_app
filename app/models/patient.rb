class Patient < ApplicationRecord
  belongs_to :doctor, class_name: 'User'

  validates :name, :age, :contact_number, presence: true
end

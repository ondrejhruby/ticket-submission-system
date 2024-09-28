class Ticket < ApplicationRecord
  # Add the association to users (ticket belongs to a user)
  belongs_to :user
  # Ensure each ticket belongs to a user
  validates :title, :description, :category, presence: true
end

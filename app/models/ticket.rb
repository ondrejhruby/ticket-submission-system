class Ticket < ApplicationRecord
  belongs_to :user

  # Ensure each ticket has a department assigned
  validates :title, :description, :department, presence: true

  # Define the available departments that match user roles
  enum department: { admin: 'admin', it_support: 'IT Support', ai_engineer: 'AI Engineer', hardware_engineer: 'Hardware Engineer', hr: 'HR' }
end

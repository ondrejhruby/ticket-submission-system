class User < ApplicationRecord
   
  # Add the association to tickets (user can have many tickets)
   has_many :tickets, dependent: :destroy
   
  # Define user roles
  enum role: { admin: 'admin', it_support: 'IT Support', ai_engineer: 'AI Engineer', hardware_engineer: 'Hardware Engineer', hr: 'HR' }

  # Set default role to 'it§_support' if no role is provided
  after_initialize do
     if self.new_record? && self.role.nil?
       self.role = :it_support # Set default role to IT Support or any role you prefer
     end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

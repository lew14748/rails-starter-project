class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { in: 3..20 }
  validates :password, presence: true, length: { in: 3..20 }

  def self.digest(string)
    cost = if ActiveModel::SecurePassword.min_cost
             BCrypt::Engine::MIN_COST
           else
             BCrypt::Engine.cost
           end
    BCrypt::Password.create(string, cost: cost)
  end
end

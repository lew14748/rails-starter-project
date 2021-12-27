class User < ApplicationRecord
  has_secure_password

  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :password, :presence => true, :length => { :in => 3..20 }

end

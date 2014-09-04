class User < ActiveRecord::Base
  has_many :surveys
  validates :email, uniqueness: true
end

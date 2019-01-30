class User < ActiveRecord::Base
  has_many :reservations
  has_many :hosts, through: :reservations
end
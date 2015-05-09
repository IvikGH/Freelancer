class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :messag, presence: true
end

class User < ApplicationRecord
  has_many :user_exercises
  has_many :weights
  has_many :exercises, through: :user_exercises

  has_many :user_challenges
  has_many :challenges, through: :user_challenges

  has_secure_password

end

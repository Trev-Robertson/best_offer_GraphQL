class User < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :contractors, through: :reviews
    validates :name, uniqueness: { case_sensitive: false }
    has_secure_password
end

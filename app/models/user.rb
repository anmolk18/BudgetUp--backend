class User < ApplicationRecord
    has_secure_password
    has_one :budget
    has_many :incomes 
    has_many :expenses

    validates :username, :password, presence: true
    validates :username, uniqueness: true
end

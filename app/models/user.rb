class User < ApplicationRecord
    has_one :budget
    has_many :incomes 
    has_many :expenses

    validates :name, :username, :password_digest, presence: true
    validates :username, uniqueness: true
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest

  has_one :budget
  has_many :incomes
  has_many :expenses
end

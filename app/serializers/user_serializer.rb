class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name

  has_one :budget
  has_many :incomes
  has_many :expenses
end

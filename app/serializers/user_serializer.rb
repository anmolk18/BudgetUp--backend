class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name

  has_many :incomes
  has_many :expenses
end

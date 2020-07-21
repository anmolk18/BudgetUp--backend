class IncomeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :value
end

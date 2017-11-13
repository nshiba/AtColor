module V1
  class SolveSerializer < ActiveModel::Serializer
    attributes created_at
    has_one :question
    has_one :user
  end
end

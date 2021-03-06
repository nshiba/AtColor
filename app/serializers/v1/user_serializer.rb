module V1
  class UserSerializer < ActiveModel::Serializer

    attributes :id, :username, :twitter, :language, :total_point, :last_solved_at
    # has_many :questions
    has_many :solved_questions
  end
end

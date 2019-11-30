module Types
  class ReviewType < Types::BaseObject
    field :user, UserType, null: true
    field :contractor, ContractorType, null: true
    field :stars, Integer, null: true
    field :content, String, null: true
    field :id, ID, null: false
  end
end

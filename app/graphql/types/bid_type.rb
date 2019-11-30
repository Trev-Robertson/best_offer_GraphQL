module Types
  class BidType < Types::BaseObject
    field :contractor, ContractorType, null: true
    field :task, TaskType, null: true
    field :price, Integer, null: true
    field :status, Boolean, null: true
    field :id, ID, null: false
  end
end

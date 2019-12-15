module Types
  class TaskType < Types::BaseObject
    field :name, String, null: true
    field :user, UserType, null: true
    field :specialty, SpecialtyType, null: true
    field :description, String, null: true
    field :task_done, Boolean, null: true
    field :id, ID, null: false
    field :bids, [BidType], null: true

    
  end
end

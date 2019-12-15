module Types
  class SpecialtyType < Types::BaseObject
    field :name, String, null: false
    field :id, ID, null: false
    field :contractors, [ContractorType], null: true
    field :tasks, [TaskType], null: true



  end
end

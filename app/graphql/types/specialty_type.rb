module Types
  class SpecialtyType < Types::BaseObject
    description: 'A list of Specialty types'
    field :id, ID, null: false 
    field :name, Types::StringType, null: true

  end
end

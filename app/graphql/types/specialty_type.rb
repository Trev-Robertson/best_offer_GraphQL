module Types
  class SpecialtyType < Types::BaseObject
    field :name, String, null: false
    field :id, ID, null: false,
      description: "A List Of Specialties"


  end
end

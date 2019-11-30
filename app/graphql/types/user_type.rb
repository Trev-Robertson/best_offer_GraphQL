module Types
  class UserType < Types::BaseObject
    field :name, String, null: true
    field :password_digest, String, null: true
    field :img_url, String, null: true
    field :phone_number, String, null: true
    field :id, ID, null: false,
    description: "A List Of Users"
  end
end

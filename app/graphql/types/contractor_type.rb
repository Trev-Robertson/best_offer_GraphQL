module Types
  class ContractorType < Types::BaseObject
    field :name, String, null: true
    field :password_digest, String, null: true
    field :img_url, String, null: true
    field :phone_number, String, null: true
    field :id, ID, null: false
  end
end

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
    

    field :specialty, [SpecialtyType], null: false,
    description: "list of specialties"
  def specialty
    Specialty.all
  end



    # field :specialty, [SpecialtyType], null: false,
    #   description: "Find a specialty by ID"
    
    # def specialty
    #   Specialty.all
    # end

  end

end

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
    

    field :specialty, SpecialtyType, null: true do
    description "Find a Specialty"
    argument :id, ID, required: true
    end
    
    def specialty(id:)
        Specialty.find(id)
    end

    field :specialties, [SpecialtyType], null: true do
      description "List all Specialties"
      end
      
      def specialties
          Specialty.all
      end


      field :user, UserType, null: true do
      description "Find a User"
      argument :id, ID, required: true
      end
      
      def user(id:)
          User.find(id)
      end


    # field :specialty, [SpecialtyType], null: false,
    #   description: "Find a specialty by ID"
    
    # def specialty
    #   Specialty.all
    # end

  end

end

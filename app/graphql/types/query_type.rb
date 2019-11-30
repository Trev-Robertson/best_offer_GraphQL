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

      field :task, TaskType, null: true do
        description "Find a Task"
        argument :id, ID, required: true
        end
        
        def task(id:)
            Task.find(id)
        end
  
      field :tasks, [TaskType], null: true do
        description "List all Tasks"
        end
        
        def tasks
            Task.all
        end

  end

end

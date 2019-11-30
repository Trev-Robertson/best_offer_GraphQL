module Types
  class QueryType < Types::BaseObject


    field :bids, [BidType], null: true do
      description "List all Bids"
    end
    def bids
      Bid.all
    end
    
    field :bid, BidType, null: true do
    description "Find a Bid"
    argument :id, ID, required: true
    end
    
    def bid(id:)
        Bid.find(id)
    end





    field :contractors, [ContractorType], null: true do
      description "List all Contractors"
    end
    def contractors
      Contractor.all
    end

    field :contractor, ContractorType, null: true do
    description "Find a Contractor"
    argument :id, ID, required: true
    end
    def contractor(id:)
      Contractor.find(id)
    end
  
  
    field :reviews, [ReviewType], null: true do
      description "List all Reviews"
    end
    def reviews
      Review.all
    end
    
    field :review, ReviewType, null: true do
      description "Find a Review"
      argument :id, ID, required: true
      end
      def review(id:)
          Review.find(id)
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



    

    field :users, [UserType], null: true do
    description "List all Users"
    end
    def users
        User.all
    end

    field :user, UserType, null: true do
    description "Find a User"
    argument :id, ID, required: true
    end
    
    def user(id:)
        User.find(id)
    end





        







  end

end

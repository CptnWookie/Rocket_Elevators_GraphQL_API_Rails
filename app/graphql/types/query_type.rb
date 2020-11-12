module Types
  class QueryType < Types::BaseObject
    # /users
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    # /user/:id
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
    # user surement à enlever 

    field :elevators, [Types::ElevatorType], null: false

    def elevators
      Elevator.all
    end

    field :customers, [Types::CustomerType], null: false

    def customers
      Customer.all
    end


    field :addresses, [Types::AddressType], null: false

    def addresses
      Address.all
    end






  end
end




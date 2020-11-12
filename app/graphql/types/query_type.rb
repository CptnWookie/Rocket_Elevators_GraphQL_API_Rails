
module Types
  class QueryType < Types::BaseObject
    field :elevators,
          [Types::ElevatorType],
          null: false,
          description: "Returns a list of items in the martian library"

    def elevators
      Elevator.all
    end
  end
end
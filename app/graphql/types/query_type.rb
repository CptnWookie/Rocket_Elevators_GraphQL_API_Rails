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


    field :fact_interventions, [Types::FactInterventionType], null: false

    def fact_interventions
      FactIntervention.all
    end

    field :building, [Types::BuildingType], null: false

    def building
      Building.all
    end

    field :employees, [Types::EmployeeType], null: false

    def employees
      Employee.all
    end
    
    field :columns, [Types::ColumnType], null: false

    def columns
      Column.all
    end

    field :buildingDetails, [Types::BuildingDetailType], null: false

    def buildingDetails
      BuildingDetail.all
    end

    field :battery, [Types::BatteryType], null: false

    def battery
      Battery.all
    end
    
    
  end
end




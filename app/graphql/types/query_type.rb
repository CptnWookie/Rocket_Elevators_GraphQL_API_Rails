module Types
  class QueryType < Types::BaseObject
    # /users
    field :users, [Types::UserType], null: false
    
    def users
      User.all
    end
    
    # ##
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    
    def user(id:)
      User.find(id)
    end
    
    # ##
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
    
    ##
    field :fact_intervention, Types::FactInterventionType, null: false do
      argument :id, ID, required: true
    end
    
    def fact_intervention(id:)
      FactIntervention.find(id)
    end
    ###
    
    field :buildings, [Types::BuildingType], null: false
    
    def buildings
      Building.all
    end
    
    #  ##
     field :building, Types::BuildingType, null: false do
      argument :id, ID, required: true
    end
    
    def building(id:)
      Building.find(id)
    end
    
    ###
    field :employees, [Types::EmployeeType], null: false
    
    def employees
      Employee.all
    end
    ##
    
    field :employee, Types::EmployeeType, null: false do
      argument :id, ID, required: true
    end
    
    def employee(id:)
      Employee.find(id)
    end
    ###
    
    field :columns, [Types::ColumnType], null: false
    def columns
      Column.all
    end
        
    field :buildingDetails, [Types::BuildingDetailType], null: false
    
    def buildingDetails
      BuildingDetail.all
    end
    
    # field :battery, [Types::BatteryType], null: false
    #
    # def battery
    #   Battery.all
    # end
    #
    #  ##
    #  field :battery, Types::BatteryType, null: false do
    #   argument :id, ID, required: true
    # end
    # def battery(id:)
    #   Battery.find(id)
    # end
    # ###
  end
end

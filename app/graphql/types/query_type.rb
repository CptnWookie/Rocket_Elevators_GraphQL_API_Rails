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
    
      # ##
      # field :elevator, Types::ElevatorType, null: false do
      #   argument :id, ID, required: true
      # end
  
      # def elevator(id:)
      #   Elevator.find(id)
      # end
      # # ##

    field :customer, [Types::CustomerType], null: false

    def customer
      Customer.all
    end

     # ##
  # field :customer, Types::CustomerType, null: false do
  #     argument :id, ID, required: true
  #   end

  #   def customer(id:)
  #     Customer.find(id)
  #   end
    # ##

    field :addresses, [Types::AddressType], null: false

    def addresses
      Address.all
    end
    # ##
    # field :addresses, Types::AdressType, null: false do
    #   argument :id, ID, required: true
    # end

    # def adresses(id:)
    #   Address.find(id)
    # end
    # ###


    field :factintervention, [Types::FactInterventionType], null: false

    def factintervention
      FactIntervention.all
    end

    ##
    field :factintervention, Types::FactInterventionType, null: false do
      argument :id, ID, required: true
    end

    def factintervention(id:)
      FactIntervention.find(id)
    end
    ###

    

    field :building, [Types::BuildingType], null: false

    def building
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
    
    # ##
    # field :employees, Types::EmployeeType, null: false do
    #   argument :id, ID, required: true
    # end

    # def building(id:)
    #   Employee.find(id)
    # end
    # ###

    field :columns, [Types::ColumnType], null: false

    def columns
      Column.all
    end

    # ##
    # field :columns, Types::ColumnType, null: false do
    #   argument :id, ID, required: true
    # end

    # def columns(id:)
    #   Column.find(id)
    # end
    # ###

    field :buildingDetails, [Types::BuildingDetailType], null: false

    def buildingDetails
      BuildingDetail.all
    end

    field :battery, [Types::BatteryType], null: false

    def battery
      Battery.all
    end

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




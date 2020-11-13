module Types
  class FactInterventionType < Types::BaseObject
    field :id, ID, null: false
    field :employee_id, Integer, null: true
    field :building_id, Integer, null: true
    field :battery_id, Integer, null: true
    field :column_id, Integer, null: true
    field :elevator_id, Integer, null: true
    field :status, String, null: true
    field :results, String, null: true
    field :repport, String, null: true
    field :intervention_start, GraphQL::Types::ISO8601DateTime, null: true
    field :intervention_finish, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    # Join employee and get one only item
    field :employee, Types::EmployeeType, null:true
    def employee
      Employee.where(id: object.employee_id)[0]
    end
    # #  join Building and get one only item
    field :building, Types::BuildingType, null:true
    def building
      Building.where(id: object.building_id)[0]
    end
    # #  join adress and get one only item
     field :address, Types::AddressType, null:true
    def address
     Address.where(id: object.building_id)[0]
    end

    field :buildingDetail, Types::BuildingDetailType, null:true
    def buildingDetail
      BuildingDetail.where(id: object.building_id)[0]
    end





  end
end
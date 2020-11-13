module Types
  class EmployeeType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :function, String, null: true
    field :phone, String, null: true
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: true

    field :fact_interventions, [Types::FactInterventionType], null: false    
    def fact_interventions      
      object.fact_interventions   
    end

    
  end
end

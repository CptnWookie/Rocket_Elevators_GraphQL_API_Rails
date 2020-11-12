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
  end
end
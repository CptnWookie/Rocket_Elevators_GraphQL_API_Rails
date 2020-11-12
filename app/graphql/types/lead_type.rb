module Types
  class LeadType < Types::BaseObject
    field :id, ID, null: false
    field :full_name, String, null: true
    field :email, String, null: true
    field :phone, String, null: true
    field :business_name, String, null: true
    field :project_name, String, null: true
    field :department, String, null: true
    field :project_description, String, null: true
    field :message, String, null: true
    field :attachment, String, null: true
    field :user_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end


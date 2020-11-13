module Types
  class QuoteType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: true
    field :apartments, Integer, null: true
    field :floors, Integer, null: true
    field :basements, Integer, null: true
    field :businesses, Integer, null: true
    field :elevator_shafts, Integer, null: true
    field :parking_spaces, Integer, null: true
    field :occupants, Integer, null: true
    field :opening_hours, Integer, null: true
    field :product_line, String, null: true
    field :install_fee, Types::DecimalType, null: true
    field :total_price, Types::DecimalType, null: true
    field :unit_price, Integer, null: true
    field :elevator_number, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :building_type, String, null: true
  end
end

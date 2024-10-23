class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :name, :role
  has_one :player
end

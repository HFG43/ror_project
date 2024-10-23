class TeamSerializer
  include JSONAPI::Serializer
  attributes :division
  has_many :players
end

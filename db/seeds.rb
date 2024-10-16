# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing tables
Coordinator.destroy_all
Trainer.destroy_all
Player.destroy_all
Parent.destroy_all
Team.destroy_all
Club.destroy_all
User.destroy_all

# Create clubs
club1 = Club.create!(name: "Club de Rugby Mar", city: "Mar del Plata")
club2 = Club.create!(name: "Club de Rugby Sierra", city: "Sierra de los Padres")
club3 = Club.create!(name: "Club de Rugby Ocean", city: "Pinamar")
club4 = Club.create!(name: "Club de Rugby Cordillera", city: "Neuquén")

# Create users (coaches, parents, and players)
users = [
  { email: "hernanguemes@hotmail.com", password: "password", name: "Hernan", role: "trainer" },
  { email: "maria@example.com", password: "password", name: "Maria", role: "parent" },
  { email: "pablo@example.com", password: "password", name: "Pablo", role: "trainer" },
  { email: "lucas@example.com", password: "password", name: "Lucas", role: "player" },
  { email: "sofia@example.com", password: "password", name: "Sofia", role: "player" },
  { email: "jose@example.com", password: "password", name: "Jose", role: "parent" },
  { email: "laura@example.com", password: "password", name: "Laura", role: "parent" },
  { email: "martin@example.com", password: "password", name: "Martin", role: "trainer" },
  { email: "camila@example.com", password: "password", name: "Camila", role: "player" },
  { email: "roberto@example.com", password: "password", name: "Roberto", role: "parent" },
]

users.each do |user_attributes|
  User.create!(user_attributes)
end

# Create teams
teams = [
  { division: "M12", club: club1 },
  { division: "M12", club: club2 },
  { division: "M14", club: club1 },
  { division: "M14", club: club3 },
  { division: "M16", club: club4 },
  { division: "M16", club: club2 }
]

teams.each do |team_attributes|
  Team.create!(team_attributes)
end

# Create trainers
trainer1 = Trainer.create!(isFather: false, user: User.find_by(email: "hernanguemes@hotmail.com"), team: Team.find_by(division: "M12", club: club1))
trainer2 = Trainer.create!(isFather: false, user: User.find_by(email: "pablo@example.com"), team: Team.find_by(division: "M14", club: club1))
trainer3 = Trainer.create!(isFather: false, user: User.find_by(email: "martin@example.com"), team: Team.find_by(division: "M16", club: club4))

# Create coordinators
Coordinator.create!(user: User.find_by(email: "maria@example.com"), team: Team.find_by(division: "M12", club: club1), club: club1)
Coordinator.create!(user: User.find_by(email: "jose@example.com"), team: Team.find_by(division: "M14", club: club1), club: club1)
Coordinator.create!(user: User.find_by(email: "laura@example.com"), team: Team.find_by(division: "M16", club: club4), club: club4)

# Create parents
Parent.create!(user: User.find_by(email: "maria@example.com"), gender: "Female")
Parent.create!(user: User.find_by(email: "jose@example.com"), gender: "Male")
Parent.create!(user: User.find_by(email: "laura@example.com"), gender: "Female")
Parent.create!(user: User.find_by(email: "roberto@example.com"), gender: "Male")

# Create players
Player.create!(position: "Delantero", school: "Escuela Primaria 1", birthdate: "2011-06-15", user: User.find_by(email: "lucas@example.com"), club: club1, team: Team.find_by(division: "M12", club: club1))
Player.create!(position: "Tres cuartos", school: "Escuela Secundaria 2", birthdate: "2009-08-22", user: User.find_by(email: "sofia@example.com"), club: club1, team: Team.find_by(division: "M14", club: club1))
Player.create!(position: "Medio scrum", school: "Escuela Primaria 3", birthdate: "2008-03-01", user: User.find_by(email: "camila@example.com"), club: club3, team: Team.find_by(division: "M14", club: club3))
Player.create!(position: "Apertura", school: "Escuela Secundaria 4", birthdate: "2007-12-10", user: User.find_by(email: "lucas@example.com"), club: club2, team: Team.find_by(division: "M16", club: club2))


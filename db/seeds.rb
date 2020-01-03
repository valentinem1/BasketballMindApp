
Team.destroy_all
Tag.destroy_all 

30.times do
  Team.create(name: Faker::Sports::Basketball.unique.team)
end

# Team.all.each do |team|
#   Tag.create(team_id: team.id, team_name: team.name)
# end


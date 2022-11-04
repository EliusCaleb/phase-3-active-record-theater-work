role1 = Role.create(character_name: "Hope, Evans")
role2 = Role.create(character_name: "Grace, Arita")

audition1 = Audition.create(role_id: role1.id, actor: "BlackAdam", location: "Texas", phone: "(+254768568754)",hired: false)

audition2 = Audition.create(role_id: role1.id, actor: "Flash", location: "Chinatown", phone: "(+25474556345654)",hired: false)

puts "Your are auditioning for #{audition1.role.character_name}"
puts
puts " Hired? #{audition1.hired}"
 audition1.call_back
 puts "CHOOSEN"
puts "Hired? #{audition1.hired}"
puts
#puts role1.character_name
puts "all Actors"
puts role1.auditions.collect(&:actor)#
puts
puts"All locations"
puts role1.auditions.collect(&:location)
puts
puts role1.lead
puts role2.lead
Dir["#{__dir__}/lib/**/*rb"].each {|f| require f}

store = EventMemoryStore.new
community_uc = CommunityUseCase.new(store: store)
member_uc = MemberUseCase.new(store: store)

community_uc.create(title: 'Ruby', description: 'Some description', owner: 'matz')

UI.render_index community_uc.list

community = community_uc.list.first

puts "Update Community [#{community.title}]"
community_uc.update(community.id, description: 'Ruby user group')

community_uc.join(community.id, login: 'nicola')
community_uc.join(community.id, login: 'max')
community_uc.create(title: 'Clojure', description: 'Clojure user group', owner: 'rich')

community = community_uc.list.last
community_uc.join(community.id, login: 'nicola')

UI.render_index community_uc.list

store.log

puts
puts "Timeline for nicola"
puts "-"*20
member_uc.timeline_for('nicola').each do |act|
  puts "* " << act.title
end
puts



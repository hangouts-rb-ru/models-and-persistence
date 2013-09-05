module UI
  def render_index(communities)
    puts
    puts "Communities"
    puts "-"*20
    communities.each do |com|
      puts
      puts "# #{com.title} [#{com.id}]"
      puts "  #{com.description}"
      puts "  Users: #{com.members.join(', ')}"
    end
    puts
  end
  extend self
end

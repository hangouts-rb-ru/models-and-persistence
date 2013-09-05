class CommunityFactory
  def apply(obj,ev)
    case ev.type
    when 'community.create'
      update_attrs(obj, ev.data)
      add_memeber(obj, ev.data[:owner])
    when 'community.update'
      update_attrs(obj, ev.data)
    when 'community.join'
      add_memeber(obj, ev.data[:login])
    end
  end

  def add_memeber(obj, login)
      obj.members.push(login) if login
  end
  def update_attrs(obj, data)
    data.each do |k,v|
      if obj.respond_to?(setter = "#{k}=")
	obj.send(setter, v)
      end
    end
  end

  def add_member(obj, member)
  end

  def build(id, events)
    Community.new(id).tap do |obj|
      events.each do |ev|
	apply(obj, ev)
      end
    end
  end
end

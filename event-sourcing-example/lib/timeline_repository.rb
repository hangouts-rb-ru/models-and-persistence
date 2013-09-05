class UserActionModel
  def initialize(store)
    @communities = {}
    @actions = {}
    store.events.each do |ev|
      on(ev)
    end
    store.add_listener(/community\./, self)
  end

  def on(ev)
    case ev.type
    when 'community.create'
      @communities[ev.entity_id] = ev.data[:title]
      add_action ev.data[:owner], [:create, ev.entity_id]
    when 'community.update'
      if title = ev.data[:title]
	@communities[ev.entity_id] = title
      end
    when 'community.join'
      add_action ev.data[:login], [:join, ev.entity_id]
    end
  end

  def add_action(login, action)
    (@actions[login] ||= []).push action
  end

  def actions_for_login(login)
    @actions[login].map do |a|
      UserAction.new("#{a.first} #{@communities[a.last]}")
    end
  end
end

class UserAction < Struct.new(:title)
end

class TimelineRepository
  attr :store
  def initialize(store)
    @store = store
    @model = UserActionModel.new(store)
  end

  def for_login(login)
    @model.actions_for_login(login)
  end
end

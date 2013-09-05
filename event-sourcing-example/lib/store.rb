class EventMemoryStore
  attr :events
  def initialize(events = [])
    @events = events
    @watchers = {}
  end

  def add_listener(topic, watcher)
    (@watchers[topic]||= []).push watcher
  end

  def save(event)
    @events<< event
    @watchers.each do |k, w|
      if event.type =~ k
	w.on(event)
      end
    end
  end

  def log
    @events.each do |ev|
      puts "* #{ev}"
    end
  end
end


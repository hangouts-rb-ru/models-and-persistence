module Evented
  def store
    raise "impl me"
  end

  class Event
    attr :type
    attr :data
    attr :entity_id
    attr :time

    def initialize(evn_type, data, entity_id)
      @type, @data, @entity_id = evn_type, data, entity_id
      @time = Time.now
    end

    def to_s
      "#{@time} #{type}[id:#{entity_id}]:\t#{data.inspect}"
    end
  end

  def emit(evn_type,data, entity_id)
    store.save Event.new(evn_type, data, entity_id)
  end
end

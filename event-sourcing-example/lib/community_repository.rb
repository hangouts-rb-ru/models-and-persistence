class CommunityRepository
  attr :store
  def initialize(store)
    @store = store
  end

  def select
    result = {}
    store.events
    .select {|e| e.type =~ /^community\./ }
    .each do |ev|
      (result[ev.entity_id] ||=[])<< ev
    end

    factory = CommunityFactory.new
    result.map do |id, evns|
      factory.build(id, evns)
    end
  end
end

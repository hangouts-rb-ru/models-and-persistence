require_relative 'evented'
class CommunityUseCase
  include ::Evented

  attr :store

  def initialize(context = nil)
    @store = context[:store]
  end

  def repo
    @repo ||= CommunityRepository.new(@store)
  end

  def next_id
    rand(100)
  end

  def create(data)
    #TODO: validation
    emit('community.create', data, next_id)
  end

  def update(id, data)
    emit('community.update', data, id)
  end

  def list(query=nil)
    repo.select
  end

  def join(id, data)
    emit('community.join', data, id)
  end
end

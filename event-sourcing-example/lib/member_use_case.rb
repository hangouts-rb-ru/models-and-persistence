class MemberUseCase
  include ::Evented

  attr :store

  def initialize(context = nil)
    @store = context[:store]
  end

  def repo
    @repo ||= TimelineRepository.new(@store)
  end

  def timeline_for(login)
    TimelineRepository
    .new(store)
    .for_login(login)
  end
end

class Community
  attr :id
  attr_accessor :title
  attr_accessor :description
  attr_accessor :members

  def initialize(id)
    @id = id
    @members = []
  end
end

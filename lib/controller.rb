class Controller

  def initialize
      @view = View.new
  end

  def create_gossip
      params = @view.create_gossip
      gossip = Gossip.new(params[:author], params[:content])
      gossip.save
  end

  def index_gossip()
    if (Gossip.get_all_gossip()!=nil)
      @view.index_gossip(Gossip.get_all_gossip())
    end
  end

  def destroy_gossip()
    if (Gossip.get_all_gossip()!=nil)
      choice = @view.destroy_gossip(Gossip.get_all_gossip())
      if (choice>0) then Gossip.destroy_by_index(choice-1) end
    end
  end

end

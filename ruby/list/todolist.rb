class TodoList

  # attr_accessor :chorelist

  def initialize(chorelist)
    @chorelist = chorelist
  end      

  def get_items
    @chorelist
  end

  def delete_item(item)
    @chorelist.delete(item)
  end

  def add_item(item)
    @chorelist << item
  end

  def get_item(num)
    @chorelist[num]
  end

end


#-----Driver Code------
# list = TodoList.new(["do the dishes", "mow the lawn"])
# p list.get_items
# p list.delete_item("do the dishes")
# p list.add_item("do the dishes")
# p list.add_item("mop")
# puts list.get_item(2)
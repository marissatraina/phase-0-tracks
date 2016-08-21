class TodoList

  attr_accessor :chorelist, :chore1, :chore2

  def initialize(chorelist)
    @chore1 = "do the dishes"
    @chore2 = "mow the lawn"
    @chorelist = [@chore1, @chore2]
  end

  def get_items
    @chorelist
  end 

  def add_item(new_chore)
    @chorelist << new_chore
  end

  def delete_item(boring_chore)
    @chorelist.delete(boring_chore)
  end

  def get_item(index)
    @chorelist[index]
  end
end

# Driver Code
# list = TodoList.new(@chorelist)
# p list.get_items
# list.delete_item("do the dishes")
# p list.get_items
# p list.get_item(0)
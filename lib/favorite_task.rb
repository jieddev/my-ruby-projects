require_relative 'task'

class FavoriteTask < Task
  attr_accessor :priority, :favorite_date

  def initialize(mark_as_favorite)
    super(task_id: task_id, task_name: task_name, start_date: start_date, end_date: end_date)
    @priority = priority
    @favorite_date = favorite_date
  end

  def to_hash
    super.merge({
      priority: @priority,
      favorite_date: @favorite_date
    })
  end

  def high_priority?
    @priority == 'high'
  end



end

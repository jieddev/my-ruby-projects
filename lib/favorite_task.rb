require_relative 'task'

class FavoriteTask < Task
  attr_accessor :priority, :mark_as_favorite

  def initialize(task_id:, task_name:, start_date:, end_date:, priority:, mark_as_favorite:)
    super(task_id: task_id, task_name: task_name, start_date: start_date, end_date: end_date)
    @priority = priority
    @mark_as_favorite = mark_as_favorite
  end

  def to_hash
    return {
      task_id: @task_id
      task_name: @task_name
      start_date: @start_date
      end_date: @end_date
      priority: @priority
      mark_as_favorite: @mark_as_favorite
    }
  end

  def high_priority?
    @priority == 'high'
  end

  def priority_level
    @priority
  end


end

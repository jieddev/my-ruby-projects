require_relative 'task'

class TaskDatabase 
  def initialize
    @task_list = []
    @next_id = 1
  end

  def add_task(task_name, start_date, end_date)
    task = Task.new(task_id: @next_id, task_name: task_name, start_date: start_date, end_date: end_date )

    @task_list << task
    @next_id += 1
    return task
  
  end

  def select_all_tasks
    @task_list 
  end

  def select_task_by_id(task_id)
    @task_list.find { |task| task.id == task_id}
  end

  def update_task(task_id, task_name:, start_date:, end_date: )
    task = find(task_id)
    return unless task 

    task.name = name 
    task.start_date = start_date
    task.end_date = end_date
    return task

  end

  def delete_task_by_id(task_id)
    @task_list.reject! { |task| task.task_id == task_id}
  
  end
end
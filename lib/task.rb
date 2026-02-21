class Task 
  attr_reader :task_id
  attr_accessor :task_name, :start_date, :end_date
  
  def initialize(task_id:, task_name:, start_date:, end_date:)
    @task_id = task_id
    @task_name = task_name
    @start_date = start_date
    @end_date = end_date
  end


end

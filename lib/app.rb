require_relative 'task_database'
require 'colorize'

class App 
  def initialize
    @task_database = TaskDatabase.new
  
  end

  def start_app
    loop do 
      display_options

      selected_operation = gets.chomp

      case selected_operation
      when "Create"
        create_task
      when "Read"
        read_all_task_in_database
      when "Update"
        update_task
        
      when "Delete"
      
      end
    end
  end

  private 

  def display_options
    puts "--- Task List CRUD Project ---"
    print "Please Type 'Create', 'Read', 'Update', or 'Delete': "
  end

  def create_task
    print "Task Name: "
    task_name = gets.chomp
    print "Start Date (mm/dd/yyyy): "
    start_date = gets.chomp 
    print "End Date (mm/dd/yyyy): "
    end_date = gets.chomp
  
    task = @task_database.add_task(task_name, start_date, end_date)

    puts "Successfully created task".colorize(:green)
  end

  def read_all_task_in_database
    @task_database.select_all_tasks.each {|task| p task}
  
  end

  def update_task 
    print "Task ID: "
    task_id = gets.chomp.to_i

    print "Task Name: "
    task_name = gets.chomp
    print "Start Date (mm/dd/yyyy): "
    start_date = gets.chomp 
    print "End Date (mm/dd/yyyy): "
    end_date = gets.chomp

    task = @task_database.update_task(task_id, task_name: task_name, start_date: start_date, end_date: end_date)

    puts task ? "Task updated successfully!".colorize(:green) : "Task not found".colorize(:red)

  end






end
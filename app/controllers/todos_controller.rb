# todos_controller.rb
class TodosController < ApplicationController
  def index
    #render plain: "Hello, this is /todos!"
    #render plain: Todo.all.to_a
    #render plain: Todo.all.map {|todo| todo.to_pleasant}.join("\n")
    render plain: Todo.order(:due_date).map {|todo| todo.to_pleasant}.join("\n")
  end
  def show
    id = params[:id].to_i
    #render plain: "The id enter was #{id}"
    todo= Todo.find(id)
    render plain: todo.to_pleasant
  end
end


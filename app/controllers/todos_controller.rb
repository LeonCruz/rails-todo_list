class TodosController < ApplicationController
  def new
  end
  
  def create
    @todo = Todo.new params.require(:todo).permit :description, :status

    @todo.save
    redirect_to @todo
  end
end

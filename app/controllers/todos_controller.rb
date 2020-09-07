class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end
  
  def create
    @todo = Todo.new params.require(:todo).permit :description, :status

    @todo.save
    redirect_to @todo
  end

  def show
    @todo = Todo.find(params[:id])
  end
end

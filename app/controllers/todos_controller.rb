class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end
  
  def create
    @todo = Todo.new params.require(:todo).permit :description, :status

    @todo.save
    redirect_to action: 'index'
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_path
  end
end

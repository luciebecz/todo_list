class TodoListsController < ApplicationController
  def index
    @todos = TodoList.all 
  end

  def show
    @todo = TodoList.find(params[:format])
  end

  def new
    @todo = TodoList.new 
  end

  def create
    @todo = TodoList.new(todo_params)
    if @todo.save
      redirect_to todo_lists_show_path(@todo)
    else 
      render :new
    end 
  end

  def edit
    @todo = TodoList.find(params[:format])
  end

  def update
    @todo = TodoList.find(params[:format]) 
    if @todo.update(todo_params)
      redirect_to todo_lists_show_path(@todo)
    else 
      render :edit
    end
  end

  def destroy
    @todo = TodoList.find(params[:format])
    @todo.destroy 
    
    redirect_to root_path
  end

  private 
    def todo_params
      params.require(:todo_list).permit(:item_name, :description)
    end
end

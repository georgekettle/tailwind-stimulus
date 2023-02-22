class TodosController < ApplicationController
  # GET /goals/:id/todos
  def index
    sleep(1)
    # Get all todos for specific goal
    @goal = Goal.find(params[:id])
    @todos = @goal.todos
  end

  # GET /goals/:goal_id/todos/new
  def new
    @goal = Goal.find(params[:goal_id])
    @todo = Todo.new
  end
  
  # POST /goals/:goal_id/todos
  def create
    # grab the goal from params[:goal_id]
    @goal = Goal.find(params[:goal_id])
    # Create the Todo with todo_params
    @todo = Todo.new(todo_params)
    # add the goal to the todo
    @todo.goal = @goal

    respond_to do |format|
      # save the todo
      if @todo.save
        # Redirect_to root_path
        format.html { redirect_to root_path, notice: "Todo was added" }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream
      end
    end

  end

  # PUT/PATCH /todos/:id
  def update
    # TODO
    @todo = Todo.find(params[:id])
    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to root_path }
        format.turbo_stream
      else
        format.html { redirect_to root_path, alert: 'Something went wrong' }
        format.turbo_stream
      end
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :done)
  end
end

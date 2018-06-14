class TodosController < ApplicationController
    def index
        @todos = Todo.all.order(:created_at)
    end

    def show
      @todo = Todo.find(params[:id])
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.create(todo_params)

        if @todo.valid?
            flash[:success] = 'Your todo has been successfully created'
            redirect_to todos_path
        else 
            flash[:error] = 'Please enter  a name for the todo'
            render :new
        end
    end

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        @todo = Todo.find(params[:id])
        @todo.update(todo_params)

        redirect_to todos_path
    end

    def destroy
        Todo.destroy(params[:id])

        redirect_to todos_path
    end

    private
#strong parameters to limit the parameters we want to pass
#will return somethign that looks like this
#{name: '...', description: '...'}
    def todo_params
        params.require(:todo).permit(:name, :description)
    end
end

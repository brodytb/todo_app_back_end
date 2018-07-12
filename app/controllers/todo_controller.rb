class TodoController < ApplicationController
    def index
    end
    def show 
        @todo_description = ""
        @pomodoro_estimate = 0
        todo_id = params[:id]
        if todo_id =='1'
            @todo_description = "clean bed"
            @pomodoro_estimate = 3
        elsif todo_id =='2'
            @todo_description = "clean house"
            @pomodoro_estimate = 3
        elsif todo_id =='3'
            @todo_description = "make eggs" 
            @pomodoro_estimate = 3
       
        end 
                
        @todo= Todo.find_by_id(params[:id])
    end
    
    def new 

        
    end
    
    def create
        t=Todo.new
        t.description = params['description']
        t.pomodoro_estimate=params[pomodoro_estimate]
        t.save
        redirect_to "/todo/show/#{t.id}"
        @todo= Todo.find_by_id(params[:id])
    end
    
    def edit
        
        
    end
    
end
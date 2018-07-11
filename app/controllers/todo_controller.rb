class TodoController < ApplicationController
    def index
    end
    def show 
        todo_id = "1"
        if todo_id=='1'
        @todo_description = "take out trash" @pomodoro_estimate = 3
    
        if todo_id=='5'
        @todo_description = "make meme"
        @todo_emstimate = 3
    end
end  
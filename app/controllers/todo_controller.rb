class TodoController < ApplicationController
    def index
    end
    def show 
        @todo_description = "take out trash" 
        @pomodoro_estimate = 3
    end
end 
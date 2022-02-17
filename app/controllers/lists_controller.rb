class ListsController < ApplicationController
    def create
        @list = list.new(list_params)
    
        respond_to do |format|
          if @list.save
            format.html { redirect_to list_url(@list), notice: "list was successfully created." }
            format.json { render :show, status: :created, location: @list }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @list.errors, status: :unprocessable_entity }
          end
        end
    end
end

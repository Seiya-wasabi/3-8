class TodolistsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list =Lists,new(list_params)
    lists.save
    redirect_to '/top'
  end

private

def list_params
  params.require(:list).permit(title, :body)
end

end


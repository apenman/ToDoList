class ListItemsController < ApplicationController
  before_action :find_list, except: :destroy
  def index
  end

  def new
    @list_item = @list.list_items.new
  end

  def create
    @list_item = @list.list_items.new(list_item_params)
    if @list_item.save
      redirect_to list_list_items_path
    else
      render action: :new
    end  
  end

  def destroy
    ListItem.find(params[:id]).destroy
    redirect_to list_list_items_path
  end
 
  def complete
    ListItem.find(params[:id]).update_attribute(:completed, Time.now)
    redirect_to list_list_items_path
  end
 
  private
  def list_item_params
    params[:list_item].permit(:task, :description)
  end
  
  def find_list
    @list = List.find(params[:list_id])
  end

end

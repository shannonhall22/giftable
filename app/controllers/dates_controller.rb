class DatesController < ApplicationController
  def index
    @dates = Date.all
  end

  def show
    @date = Date.find(params[:id])
  end

  def new
    @date = Date.new
  end

  def create
    @date = Date.new
    @date.event_id = params[:event_id]
    @date.user_id = params[:user_id]

    if @date.save
      redirect_to dates_url, :notice => "Date created successfully."
    else
      render 'new'
    end
  end

  def edit
    @date = Date.find(params[:id])
  end

  def update
    @date = Date.find(params[:id])

    @date.event_id = params[:event_id]
    @date.user_id = params[:user_id]

    if @date.save
      redirect_to date_url(@date.id), :notice => "Date updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @date = Date.find(params[:id])

    @date.destroy

    redirect_to dates_url, :notice => "Date deleted."
  end
end

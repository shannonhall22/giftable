class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.name = params[:name]
    @event.date = params[:date]
    @event.image_url = params[:image_url]

    if @event.save
      redirect_to events_url, :notice => "Event created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.name = params[:name]
    @event.date = params[:date]
    @event.image_url = params[:image_url]

    if @event.save
      redirect_to event_url(@event.id), :notice => "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to events_url, :notice => "Event deleted."
  end
end

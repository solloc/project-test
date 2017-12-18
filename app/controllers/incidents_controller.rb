class IncidentsController < ApplicationController
  def index
    @incidents = Incident.all.reverse_order!
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      redirect_to(incidents_path)
    else
      redirect_to(incidents/new_path)
    end
  end

  def show
    @incident = Incident.find(params[:id])
  end


  private
  def incident_params
    params.require(:incident).permit(:priority, :title)
  end


end

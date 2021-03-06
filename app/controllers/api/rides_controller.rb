class Api::RidesController < Api::BaseController
  def index
    last_modified = Ride.maximum(:updated_at)

    if stale?(:last_modified => last_modified, :etag => [last_modified, Ride.count, params])
      if params[:from] && params[:to]
        @rides = Ride.between params[:from], params[:to]
      else
        @rides = Ride.page(params[:page])
      end
    end
  end

  def show
    @ride = Ride.find(params[:id])
    fresh_when @ride
  end

  def destroy
    Ride.find(params[:id]).destroy
    Gpx::Reports::ReportGenerator.create_current!

    render :json => {}
  end
end

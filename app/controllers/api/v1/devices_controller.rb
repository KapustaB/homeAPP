module Api
  module V1
    class DevicesController < AuthorizedController

  def index
  end

  def show
    render json: @device , serializer: DevicesSerializer
  end

  def update
   if @device.update(device_params)
     @device_value_changed_at = DeviceValueChangedAt.new
     @device_value_changed_at.device_id = device_params[:id]
     @device_value_changed_at.value = device_params[:value]
     @device_value_changed_at.save
     json_response('Success', :ok)
   else
     json_response('Error', :error)
   end

  end

  private

  def device_params
    params.require(:device).permit(:id, :name, :value)
  end

    end
  end
end

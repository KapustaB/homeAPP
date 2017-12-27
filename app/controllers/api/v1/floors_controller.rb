module Api
  module V1
    class FloorsController < AuthorizedController
      before_action :set_house

      def index
        render json: @house.floors, each_serializer: FloorsSerializer
      end

      def show
        @floor = Floor.find(floor_params[:id])
        render json: @floor, serializer: FloorsSerializer
      end

      private

      def floor_params
        params.require(:floor).permit(:id)
      end
    end
  end
end


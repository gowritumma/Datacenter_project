module Api
	module V1

	class DatacentersController < ApplicationController

		def index
			# @datacenters = Datacenter.all
			@datacenters = Datacenter.joins(:country).select('datacenters.*, countries.name as country')
			render json: @datacenters

		end

		def show
			@datacenter = Datacenter.joins(:country).select('datacenters.*, countries.name as country').where('datacenters.id = ?', params[:id])

			if @datacenter.size == 0
				render json: { message: "Record Not found"}, status: :not_found
			else
				render json: @datacenter
			end

		end
	end
 	end
end
class HolidaysController < ApplicationController
	before_action :find_holiday, only: [:show]

	def index
		@holidays = Holiday.all.order("created_at DESC")
	end

	def show
	end

	def new
		@holiday = current_user.holidays.build
	end

	def create
		@holiday = current_user.holidays.build(holiday_params)

		if @holiday.save
			redirect_to @holiday
		else
			render 'new'
		end
	end

	private

	def find_holiday
		@holiday = Holiday.find(params[:id])
	end

	def holiday_params
		params.require(:holiday).permit(:name, :address, :phone, :email, :position, :from, :to, :submited)
	end

end

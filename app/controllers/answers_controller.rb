class AnswersController < ApplicationController
	def create
		@holiday = Holiday.find(params[:holiday_id])
		@answer = @holiday.answers.create(params[:answer].permit(:answer))

		if @answer.save
			redirect_to holiday_path(@holiday)
		else
			render 'new'
		end
	end		
end

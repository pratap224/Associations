class ComentController < ApplicationController

	def comnt_create
		@subject = Subject.find(params[:id])
		@coment = Coment.new(comnt)
		if @coment.save
			redirect_to subject_show_path(@subject)
		end
	end
	private
	def req_params
		params.require('coment').permit(:title,:message)
		
	end
end

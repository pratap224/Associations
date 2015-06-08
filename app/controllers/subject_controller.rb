class SubjectController < ApplicationController
	def index

		@subject = Subject.all
		
	end

	def new
		@subject = Subject.new
		
	end

	def create
		@subject = Subject.new(req_params)
		#binding.pry
		if @subject.save
			redirect_to subject_index_path
			
		end
	end

	def show

		@subject = Subject.find(params[:id])
		@coment = Coment.new
		#binding.pry
		@posts = Coment.where('post_id=?', params[:id])
		# binding.pry
		
	end
	def comnt_create
		@subject = Subject.find(params[:id])
		@coment = Coment.new(comnt)
		if @coment.save
			redirect_to subject_show_path(@subject)
		end
	end

	def edit
		@subject = Subject.find(params[:id])
		
	end
	def update
		@subject = Subject.find(params[:id])

		if @subject.update_attributes(req_params)	
			redirect_to subject_show_path(params[:id])
  		else
  			render :action => "edit"
		end
	end

	private
	def req_params
		 params.require('subject').permit(:name,:price)
		
	end
	def comnt
		params.require('coment').permit(:title, :message)
	end

end

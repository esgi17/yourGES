class StudentController < ApplicationController
	def index
		@students = Student.all
	end
	/
	def index
		@classes = Classe.all
	end

	def show; end 
	def edit; end 

	def new 
		@classe = Classe.new
	end

	def create 
		@classe = Classe.new(classe_params)
		if @classe.save
			redirect_to(@classe)
		else
			render 'new'
		end
	end

	def update 
		if @classe.update(classe_params)
			redirect_to(@classe)
		else
			render 'edit'
		end
	end

	def destroy
		@classe.destroy
		redirect_to(classes_path)
	end

	private 
	def set_classe
		@classe = Classe.find(params[:id])
	end

	def classe_params
		params.require(:classe).permit(
			:name,
			:nbstudents,
			:number)
	end
	/
end

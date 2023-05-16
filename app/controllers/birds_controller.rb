class BirdsController < ApplicationController
	def index
		render json: Bird.all, status: :ok
	end
	
	def show
		bird = Bird.find(params[:id])
		if bird
			render json: bird, status: :ok
		else
			render json: { error: "Ave no encontrada"}, status:
			:not_found
		end
	end
	
	def destroy
		bird = Bird.find(params[:id])
		if bird
			bird.delete
			render json: { message: "Eliminado" }, status: :ok
		else 
			render json: { error: "Ave no encontrada"}, status:
			:not_found
		end
	end
end

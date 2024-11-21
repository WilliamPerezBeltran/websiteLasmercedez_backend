class HeadersController < ApplicationController
	before_action :set_header, only:[:show, :update, :destroy]

  def index
		@headers = Header.all
		render json: @headers		
  end

  def show
		render json: @header
  end

  def create
		@header = Header.new(header_params)
		if @header
		 render json:@header, status: :created
		else
			render json: { error: @header.errors.full_messages }, status: :unprocessable_entity 	
		end
		rescue StandardError => e
			render json: { error: "Errors interno: #{e.message}", status: :internal_server_error  }
		end
  end

  def update
		if @header.update(header_params)
			render @header 
		else
			render json: { errors: @header.errors.full_messages }, status: :unprocessable_entity }
		end
  end

  def destroy
		@header.destroy
		render json:{ message:  }, status: :ok
  end

	private
		def header_params
			params.require(:heade).permit(:name, :path, :position, :component)
		end

		def set_header
			@header = Header.find_by(id: params[:id])
			render { error: "Header no encontrado"  }, status: :not_found unless @header 
		end
end

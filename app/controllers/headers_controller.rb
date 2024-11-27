class HeadersController < ApplicationController
  before_action :set_header, only: [:show, :update, :destroy]

  # Acción para listar todos los registros
  def index
    @headers = Header.all
    render json: @headers
  end

  # Acción para mostrar un registro específico
  def show
    render json: @header
  end

  # Acción para crear un nuevo registro
  def create
    @header = Header.new(header_params)
    if @header.save
      render json: @header, status: :created
    else
      render json: { errors: @header.errors.full_messages }, status: :unprocessable_entity
    end
  rescue StandardError => e
    render json: { error: "Error interno: #{e.message}" }, status: :internal_server_error
  end

  # Acción para actualizar un registro existente
  def update
    if @header.update(header_params)
      render json: @header
    else
      render json: { errors: @header.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # Acción para eliminar un registro
  def destroy
    @header.destroy
    render json: { message: "Header eliminado con éxito" }, status: :ok
  end

  private

  # Método para filtrar los parámetros permitidos
  def header_params
    params.require(:header).permit(:name, :path, :position, :component)
  end

  # Método para buscar y asignar un registro
  def set_header
    @header = Header.find_by(id: params[:id])
    render json: { error: "Header no encontrado" }, status: :not_found unless @header
  end
end

class ConcursesController < ApplicationController
  before_action :find_concurse, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @concurses = Concurse.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @concurses = Concurse.where(:category_id => @category_id).order("created_at DESC")

    end

  end

  def show
    @concurse = Concurse.find(params[:id])
  end

  def new
    @concurse = current_company.concurses.build
    @categories = Category.all.map { |c| [c.name, c.id]}
  end

  def create
    @concurse = current_company.concurses.build(concurse_params)
    @concurse.category_id = params[:category_id]
    @concurse.concurse_pdf=params[:concurse][:concurse_pdf]

    if @concurse.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.all.map { |c| [c.name, c.id]}
  end

  def update
    @concurse.category_id = params[:category_id]

    if @concurse.update(concurse_params)
      redirect_to concurse_path(@concurse)
    else
      render 'edit'
    end
  end

  def destroy
    @concurse.destroy
    redirect_to root_path
  end

  private

  def concurse_params
    params.require(:concurse).permit(:concurse_img, :concurse_pdf, :titulo ,:empresa, :area, :salario, :educacion, :experiencia, :conocimiento, :descripcion, :category_id)
  end

  def find_concurse
    @concurse = Concurse.find(params[:id])
  end

end

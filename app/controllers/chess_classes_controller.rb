class ChessClassesController < ApplicationController
  def index
    @classes = ChessClass.all
  end

  def show
    @chess_class = ChessClass.find(params[:id])
  end

  def destroy
    @chess_class = ChessClass.find(params[:id])

    if @chess_class.destroy
      flash[:notice] = "#{@chess_class.school} was removed."
      redirect_to chess_classes_path
    else
      flash.now[:alert] = " Error deleting school."
      render :show
    end
  end

  def edit
    @chess_class = ChessClass.find(params[:id])
  end

  def update
    @chess_class = ChessClass.find(params[:id])

    @chess_class.school = params[:chess_class][:school]
    @chess_class.days = params[:chess_class][:days]
    @chess_class.price = params[:chess_class][:price]
    @chess_class.size = params[:chess_class][:size]

    if @chess_class.save
      flash[:notice] = "Class was updated."
      redirect_to @chess_class
    else
      flash.now[:alert] = "Error saving class."
      render :edit
    end
  end

  def new
    @chess_class = ChessClass.new
  end

  def create
    @chess_class = ChessClass.new
    @chess_class.school = params[:chess_class][:school]
    @chess_class.days = params[:chess_class][:days]
    @chess_class.price = params[:chess_class][:price]
    @chess_class.size = params[:chess_class][:size]

    if @chess_class.save
      flash[:notice] = "Class was saved."
      redirect_to @chess_class
    else
      flash.now[:alert] = "Error saving class."
      render :new
    end
  end
end

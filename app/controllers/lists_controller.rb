class ListsController < ApplicationController
  before_action :set_list, only: [ :show, :edit, :update, :destroy ]

  # GET /lists or /lists.json
  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def new
    @list = List.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:list)
  end

end

class EntryTypesController < ApplicationController
  before_action :set_entry_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @entry_types = EntryType.all
    respond_with(@entry_types)
  end

  def show
    respond_with(@entry_type)
  end

  def new
    @entry_type = EntryType.new
    respond_with(@entry_type)
  end

  def edit
  end

  def create
    @entry_type = EntryType.new(entry_type_params)
    @entry_type.save
    respond_with(@entry_type)
  end

  def update
    @entry_type.update(entry_type_params)
    respond_with(@entry_type)
  end

  def destroy
    @entry_type.destroy
    respond_with(@entry_type)
  end

  private
    def set_entry_type
      @entry_type = EntryType.find(params[:id])
    end

    def entry_type_params
      params.require(:entry_type).permit(:name, :income)
    end
end

class CourseItemsController < ApplicationController
  before_action :set_course_item, only: [:show, :edit, :update, :destroy]

  # GET /course_items
  def index
    @course_items = CourseItem.items_for params[:course_id]
    respond_to do |format|
      format.html
      format.json { render :json => @course_items, each_serializer: CourseItemSerializer }
    end
  end

  # GET /course_items/1
  def show
  end

  # GET /course_items/new
  def new
    @course_item = CourseItem.new
  end

  # GET /course_items/1/edit
  def edit
  end

  # POST /course_items
  def create
    @course_item = CourseItem.new(course_item_params)

    if @course_item.save
      redirect_to @course_item, notice: 'Course item was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /course_items/1
  def update
    if @course_item.update(course_item_params)
      head :ok
    else
      render json: { error: "error" }, status: :bad_request
    end
  end

  # DELETE /course_items/1
  def destroy
    @course_item.destroy
    redirect_to course_items_url, notice: 'Course item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_item
      @course_item = CourseItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_item_params
      params.require(:course_item).permit(:times_repeated, :last_learning, :word_id, :course_id)
    end
end

class BrewpubsController <ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
    before_action :authorize_user, except: [:index, :show, :new, :create]

  def index
    @brewpubs= Brewpub.all
  end

  def new
    @brewpub = Brewpub.new
  end

  def create
    @brewpub = Brewpub.create(brewpub_params)
    @brewpub.user = current_user
    if @brewpub.save
      redirect_to root_path, notice: "Brewpub added successfully"
    else
      flash[:alert] = @brewpub.errors.full_messages.join(',')
      render :new
    end
  end

  def show
    @brewpub = Brewpub.find(params[:id])
    # @reviews = @brewpub.reviews
  end

  def edit
    @brewpub = Brewpub.find(params[:id])
  end

  def update
    @brewpub = Brewpub.find(params[:id])
    # This doesn't save yet
    if @brewpub.update(brewpub_params)
      redirect_to brewpubs_path, notice: "successfully updated"
    else
      render :edit
      flash[:alert] = "Pub not saved"
    end
  end


  protected
  def brewpub_params
    params.require(:brewpub).permit(:name, :address, :city, :state, :zip, :description, :website_url, :img_url, :logo_url, :phone_number, :contact_email, :user_id)
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

  def show
    @brewpub = Brewpub.find(params[:id])
    @review = Review.new
    @review.brewpub = @brewpub
    @reviews=@brewpub.reviews
  end
end

class BrewpubsController <ApplicationController
  before_action :authorize_user, except: [:new, :create]

  def new
    @brewpub = Brewpub.new
  end

  def create
    @brewpub = Brewpub.new
    @brewpub = Brewpub.create(brewpub_params)
    @brewpub.user = current_user
    if @brewpub.save
      BrewpubMailer.new_brewpub(@brewpub).deliver_now
      redirect_to @brewpub, notice: "Brewpub added successfully"
    else
      flash.now[:alert] = @brewpub.errors.full_messages
      render :new
    end
  end

  def edit
    @brewpub = Brewpub.find(params[:id])
  end

  def update
    @brewpub = Brewpub.find(params[:id])
    if @brewpub.update(brewpub_params)
      redirect_to @brewpub, notice: "successfully updated"
    else
      render :edit
      flash.now[:alert] = "Pub not saved"
    end
  end

  protected

  def brewpub_params
    params.require(:brewpub).permit(:name, :address, :city, :state, :zip, :description, :website_url, :img_url, :logo_url, :phone_number, :contact_email, :user_id)
  end

end

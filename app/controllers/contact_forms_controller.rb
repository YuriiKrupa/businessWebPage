class ContactFormsController < InheritedResources::Base

  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    unless @contact_form.save
      render :new
    else
      redirect_to @contact_form
    end
  end

  private

    def contact_form_params
      params.require(:contact_form).permit(:full_name, :email, :message)
    end
end


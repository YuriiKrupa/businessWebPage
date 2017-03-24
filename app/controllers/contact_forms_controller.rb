class ContactFormsController < InheritedResources::Base

  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    if @contact_form.save
      render :submit
      ContactFormMailer.contact_form_recieved(@contact_form).deliver
    else
      render :new
    end
  end

  private

    def contact_form_params
      params.require(:contact_form).permit(:full_name, :email, :message)
    end
end


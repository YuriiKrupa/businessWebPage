class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      render :create
    else
      flash.now[:error] = 'Cannot sent message.'
      render :new
    end
  end
  
end
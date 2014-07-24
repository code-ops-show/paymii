class ContactsController < ApplicationController
  layout 'single_card', only: [:edit, :new]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    end
  end

  def edit
    @contact = Contact.where(id: params[:id]).first
  end

  def update
    @contact = Contact.where(id: params[:id]).first
    if @contact.update_attributes(contact_params)
      redirect_to contacts_path
    end
  end

  def destroy
    @contact = Contact.where(id: params[:id]).first
    if @contact.destroy
      redirect_to contacts_path
    end
  end

private
  def contact_params
    params.require(:contact).permit(:name, :email, :address)
  end
end

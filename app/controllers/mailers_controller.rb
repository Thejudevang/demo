class MailerController < ApplicationController

	 def create
    @mailer = Mailer.new(params[:mailer])
 
    respond_to do |format|
      if @mailer.save
        # Tell the UserMailer to send a welcome email after save
        MailerMailer.welcome_email(@mailer).deliver_later
 
        format.html { redirect_to(@mailer, notice: 'User was successfully created.') }
        format.json { render json: @mailer, status: :created, location: @mailer }
      else
        format.html { render action: 'new' }
        format.json { render json: @mailer.errors, status: :unprocessable_entity }
      end
    end
  end
end
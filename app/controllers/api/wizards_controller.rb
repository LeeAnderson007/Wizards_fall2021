class Api::WizardsController < ApplicationController
    def index
        render json: Wizard.all
      end
    
      def rate
         @wizard = Wizard.find(params[:id])
         # need the new rating
         @wizard.stars = params[:stars]
         @wizard.save
         render json: @wizard
      end
end

class Api::WizardsController < ApplicationController
    before_action :set_fact, only: [:show, :update, :destroy, :rate]

    def index
        render json: Wizard.all
      end

      def show
        render json: Wizard.find(params[:id])
      end
    
    
      def rate
        puts "rate called"
         #@wizard = Wizard.find(params[:id])
         # need the new rating
         @wizard.stars = params[:stars]
         @wizard.save
         render json: @wizard
      end

      def create
        @wizard = Wizard.new(wizard_params)
        if(@wizard.save)
        else
            render json: { errors: @wizard.errors }, status: :unprocessable_entity
        end
      end

      def update
        puts "update called"
        #@wizard = Wizard.find(params[:id])
        if(@wizard.update(wizards_params))
          render json: @wizard
        else
          # this will cause a 422 error
          render json: {errors: @wizard.errors, look:'Oh No!'}, status: :unprocessable_entity
        end
      end
    
    #   def like
    #     @wizard = Wizard.find(params[:id])
        
    #     @wizard.save
    #     render json: @game
    #   end
    
      def destroy
        @wizard = Wizard.find(params[:id])
        render json: @wizard.destroy
      end
    

    private

    def wizards_params
        params.require(:wizard).permit(:name, :username, :source, :stars)
    end

    def find_fact
        @wizard = Wizard.find(params[:id])
      end

end

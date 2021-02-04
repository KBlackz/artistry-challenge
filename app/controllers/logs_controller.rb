class LogsController < ApplicationController    

    def new 
        @log = Log.new 
    end    

    def create
       @log = Log.create(log_params) 
       redirect_to log_path(@log) 
    end 

    def show
        @log = Log.find(params[:id])
    end    
    
    def edit
        @log = Log.find(params[:id])
    end

    def update
        @log = Log.find(params[:id])
        @log.update(params)
        redirect_to log_path(@log)
    end

    def destroy
        @log = Log.find(params[:id])
        @log.destroy
        redirect_to logs_path
    end    

    private

    def log_params
        params.require(:log).permit(:artist_id, :instrument_id)
    end 

end

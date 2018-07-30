class PersonsController < ApplicationController

    def index
        @person=Person.all
        respond_to do |format|
            
            format.html
            format.xml {render xml: @person}
			format.json { render json: @person} #{ send_data Person.export_json(@person), type: 'text/json; charset=utf-8; header=present', disposition: 'attachment; filename=contacts.json' }
		end
    end
    def show 

    end
end

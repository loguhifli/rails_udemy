class ArticleszController < ApplicationController

    def new 
        @articles = Articles.new
        @name = "logu"
    end

end
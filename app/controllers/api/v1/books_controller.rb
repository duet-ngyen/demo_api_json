module Api
  module V1
    class BooksController < Api::BaseController
      def index
        respond_with Book.all
      end
    end
  end
end

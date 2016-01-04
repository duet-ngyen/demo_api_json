module Api
  module V1
    class BooksController < Api::BaseController
      # http_basic_authenticate_with name: "duyet"
      before_filter :restrict_access
      before_filter :authenticate_user!
      respond_to :json
      def index
        respond_with Book.all
      end

      private
      def restrict_access
        api_key = ApiKey.find_by_access_token(params[:access_token])
        head :unauthorized unless api_key
        end
      end
    end
  end
end

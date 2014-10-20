module Refinery
  module Members
    module Admin
      class MembersController < ::Refinery::AdminController
        crudify :"refinery/members/member",
        :title_attribute => 'email', :xhr_paging => true

        private

          def member_params
            params.require(:member).permit(:email, :password, :password_confirmation, :remember_me, :position)
          end
      end
    end
  end
end

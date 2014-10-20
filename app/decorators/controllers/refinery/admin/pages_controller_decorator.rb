Refinery::Admin::PagesController.class_eval do
  # work around an issue with stack level too deep, due to an issue with decorators.
  if self.instance_methods.exclude?(:page_params_with_need_login_params)
    # We need to add :need_login to page_params as it is ignored by strong parameters. (See #100)
    def page_params_with_need_login_params

      # Get the :need_login hash from params
      need_login_params = params.require(:page).permit(:need_login)

      # Add the :need_login hash to the default page_params hash
      page_params_without_need_login_params.merge(need_login_params)

    end

    # Swap out the default page_params method with our new one
    alias_method_chain :page_params, :need_login_params
  end
end
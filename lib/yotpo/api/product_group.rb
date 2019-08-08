module Yotpo
  module ProductGroup
    def create_product_group(params, headers = {})
      request = {
        group_name: params[:group_name],
        utoken: params[:utoken]
      }
      app_key = params[:app_key]
      post("/v1/apps/#{app_key}/products_groups", request, headers)
    end

    def get_account_product_groups(params, headers = {})
      request = {
        utoken: params[:utoken]
      }
      app_key = params[:app_key]
      get("/v1/apps/#{app_key}/products_groups", request, headers)
    end

    def get_product_group_by_name(params, headers = {})
      request = {
        utoken: params[:utoken]
      }
      app_key = params[:app_key]
      get("/v1/apps/#{app_key}/products_groups/#{params[:group_name]}", request, headers)
    end

    def add_remove_products(params, headers = {})
      request = {
        utoken: params[:utoken],
        product_ids_to_add: params[:product_ids_to_add],
        product_ids_to_remove: params[:product_ids_to_remove]
      }
      app_key = params[:app_key]
      put("/v1/apps/#{app_key}/products_groups/#{params[:group_name]}", request, headers)
    end

    def delete_product_group_by_name(params, headers = {})
      request = {
        utoken: params[:utoken]
      }
      app_key = params[:app_key]
      delete("/v1/apps/#{app_key}/products_groups/#{params[:group_name]}", request, headers)
    end
  end
end

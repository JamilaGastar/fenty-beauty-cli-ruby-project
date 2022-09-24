require_relative '../config/environment'

class FentyProducts

    FENTY_BEAUTY_MAKEUP_URL =  "https://makeup-api.herokuapp.com/api/v1/products.json?brand=fenty&product_type="
    PRODUCT_LIST = []

    def initialize(attributes)
        attributes.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
        PRODUCT_LIST << self
    end

    def self.list_products_by_product_type(product_type)
        product_list_url = FENTY_BEAUTY_MAKEUP_URL + product_type
        get_request_parse_response(product_list_url)
    end

    def self.get_the_product_details(product_name)
        PRODUCT_LIST.find{|product| product.name == product_name}
    end

    # private

    def self.get_request_parse_response(product_list_url)
        uri = URI.parse(product_list_url)

        response = Net::HTTP.get_response(uri)
        response_json = JSON.parse(response.body)

        products = response_json.collect do |product|
            attributes = {
                id: product["id"],
                brand: product["brand"],
                name: product["name"],
                price: product["price"],
                description: product["description"],
                category: product["category"],
                product_type: product["product_type"]
                # product_colors: product["product_colors"]: 
                #     {product_colors["colour_name"]}
            }           
           FentyProducts.new(attributes)
        end
    end
    
end





    


    
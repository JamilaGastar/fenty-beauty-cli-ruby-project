require_relative "./spec_helper"

RSpec.describe FentyProducts, "#initialize" do
    it "initializes a new object of the FentyProducts class with the given attributes" do

        #arrange (set up the data)
        attributes = {
                id:850,
                brand:"fenty",
                name:"MATTEMOISELLE - Plush Matte Lipstick",
                price:"18.0",
                product_type:"lipstick",
    #             product_colors:[
    #                 {colour_name:"Ma'Damn - Royal Red"},
    #                 {colour_name:"Candy Venom - Electric Pink"},
    #                 {colour_name:"Up 2 No Good - Nude Peach"},
    #                 {colour_name:"Freckle Fiesta - Spiced Terracotta"},
    #                 {colour_name:"PMS - Moody Brown"},
    #                 {colour_name:"Ya Dig?! - Periwinkle Blue"},
    #                 {colour_name:"One of the Boyz - Wild Lilac"},
    #                 {colour_name:"Griselda - Bold Burgundy"},
    #                 {colour_name:"Spanked - Dusty Rose"},
    #                 {colour_name:"Saw-C - Exotic Tangerine"},
    #                 {colour_name:"S1ngle - Blushing Nude"},
    #                 {colour_name:"Shawty - Warm Chestnut"},
    #                 {colour_name:"Midnight Wasabi - Wicked Green"},
    #                 {colour_name:"Clapback - True Navy"}
    # ]         
            }         

        #act (performing action you want to test)
        MATTEMOISELLE_Plush_Matte_Lipstick = FentyProducts.new(attributes)

        #assert 
        expect(MATTEMOISELLE_Plush_Matte_Lipstick.name).to eq "MATTEMOISELLE - Plush Matte Lipstick"
    end
end

RSpec.describe FentyProducts, "#list_products_by_product_type" do
    it "fetches a list of products given a product type" do

        #act
        products = FentyProducts.list_products_by_product_type("lipstick")

        #assert
        expect(products.length).to be > 0
        products.each do |product|
            expect(product).to be_a_kind_of FentyProducts
        end
    end
end

RSpec.describe FentyProducts, "#get_the_product_details" do
    it "fetches the products details given the product name" do

        #act
        product = FentyProducts.get_the_product_details("MATTEMOISELLE - Plush Matte Lipstick")

        #assert
        expect(product.name). to eq "MATTEMOISELLE - Plush Matte Lipstick"
    end
end



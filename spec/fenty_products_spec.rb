require_relative "./spec_helper"

RSpec.describe FentyProducts, "#initialize" do
    it "initializes a new object of the FentyProducts class with the given attributes" do

        #arrange (set up the data)
        attributes = {
            "id":850,
            "brand":"fenty",
            "name":"MATTEMOISELLE - Plush Matte Lipstick",
            "price":"18.0",
            "price_sign":"$",
            "currency":"USD",
            "image_link":"https://www.fentybeauty.com/dw/image/v2/AAXW_PRD/on/demandware.static/-/Sites-itemmaster_FENTY/default/dwc8c6d1b8/hi-res/FB40005_FB4014.jpg?sw=550 550w",
            "product_link":"https://www.fentybeauty.com/mattemoiselle/plush-matte-lipstick/FB40005.html?dwvar_FB40005_color=FB4014",
            "website_link":"https://www.fentybeauty.com",
            "description":"An ultra slim lipstick with a longwearing, petal-soft matte finish, created in a rainbow of 14 weightless, color-intense shades each designed to flatter all skin tones.",
            "rating":nil,
            "category":"lipstick",
            "product_type":"lipstick",
            "tag_list":[],
            "created_at":"2017-12-23T23:53:46.839Z",
            "updated_at":"2017-12-25T23:53:17.595Z",
            "product_api_url":"https://makeup-api.herokuapp.com/api/v1/products/850.json",
            "api_featured_image":"//s3.amazonaws.com/donovanbailey/products/api_featured_images/000/000/850/original/open-uri20171224-4-w3yj1s?1514073895",
            "product_colors":[
                {"hex_value":"#B6232B","colour_name":"Ma'Damn - Royal Red"},
                {"hex_value":"#DC386C","colour_name":"Candy Venom - Electric Pink"},
                {"hex_value":"#E08F71","colour_name":"Up 2 No Good - Nude Peach"},
                {"hex_value":"#C95E3C","colour_name":"Freckle Fiesta - Spiced Terracotta"},
                {"hex_value":"#6D271A","colour_name":"PMS - Moody Brown"},
                {"hex_value":"#6785B8","colour_name":"Ya Dig?! - Periwinkle Blue"},
                {"hex_value":"#9B7DC1","colour_name":"One of the Boyz - Wild Lilac"},
                {"hex_value":"#631B26","colour_name":"Griselda - Bold Burgundy"},
                {"hex_value":"#A7453C","colour_name":"Spanked - Dusty Rose"},
                {"hex_value":"#FC8327","colour_name":"Saw-C - Exotic Tangerine"},
                {"hex_value":"#D37655","colour_name":"S1ngle - Blushing Nude"},
                {"hex_value":"#894134","colour_name":"Shawty - Warm Chestnut"},
                {"hex_value":"#437954","colour_name":"Midnight Wasabi - Wicked Green"},
                {"hex_value":"#072345","colour_name":"Clapback - True Navy"}
            ]
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
            expect(product).to be_a_kind_of FentyBeauty
        end
    end
end

# attributes = {
#     "id":850,
#     "brand":"fenty",
#     "name":"MATTEMOISELLE - Plush Matte Lipstick",
#     "price":"18.0",
#     "price_sign":"$",
#     "currency":"USD",
#     "image_link":"https://www.fentybeauty.com/dw/image/v2/AAXW_PRD/on/demandware.static/-/Sites-itemmaster_FENTY/default/dwc8c6d1b8/hi-res/FB40005_FB4014.jpg?sw=550 550w",
#     "product_link":"https://www.fentybeauty.com/mattemoiselle/plush-matte-lipstick/FB40005.html?dwvar_FB40005_color=FB4014",
#     "website_link":"https://www.fentybeauty.com",
#     "description":"An ultra slim lipstick with a longwearing, petal-soft matte finish, created in a rainbow of 14 weightless, color-intense shades each designed to flatter all skin tones.",
#     "rating":nil,
#     "category":"lipstick",
#     "product_type":"lipstick",
#     "tag_list":[],
#     "created_at":"2017-12-23T23:53:46.839Z",
#     "updated_at":"2017-12-25T23:53:17.595Z",
#     "product_api_url":"https://makeup-api.herokuapp.com/api/v1/products/850.json",
#     "api_featured_image":"//s3.amazonaws.com/donovanbailey/products/api_featured_images/000/000/850/original/open-uri20171224-4-w3yj1s?1514073895",
#     "product_colors":[
#         {"hex_value":"#B6232B","colour_name":"Ma'Damn - Royal Red"},
#         {"hex_value":"#DC386C","colour_name":"Candy Venom - Electric Pink"},
#         {"hex_value":"#E08F71","colour_name":"Up 2 No Good - Nude Peach"},
#         {"hex_value":"#C95E3C","colour_name":"Freckle Fiesta - Spiced Terracotta"},
#         {"hex_value":"#6D271A","colour_name":"PMS - Moody Brown"},
#         {"hex_value":"#6785B8","colour_name":"Ya Dig?! - Periwinkle Blue"},
#         {"hex_value":"#9B7DC1","colour_name":"One of the Boyz - Wild Lilac"},
#         {"hex_value":"#631B26","colour_name":"Griselda - Bold Burgundy"},
#         {"hex_value":"#A7453C","colour_name":"Spanked - Dusty Rose"},
#         {"hex_value":"#FC8327","colour_name":"Saw-C - Exotic Tangerine"},
#         {"hex_value":"#D37655","colour_name":"S1ngle - Blushing Nude"},
#         {"hex_value":"#894134","colour_name":"Shawty - Warm Chestnut"},
#         {"hex_value":"#437954","colour_name":"Midnight Wasabi - Wicked Green"},
#         {"hex_value":"#072345","colour_name":"Clapback - True Navy"}
#     ]
# }


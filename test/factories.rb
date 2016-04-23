FactoryGirl.define do

  factory :courier do
    name         "KurirowyTest"
    precinct     "Krowodrza Górka"
  end

  factory :dispatcher_office do
    name         "Biuro"
    city         "Kraków"
    street       "Warszawska"
    house_number "24"
    local_number "2b"
    postcode     "30-000"
  end

  factory :order do
    order_number     "123456789ABCDEFG"
    status           "w dordze do klienta"
  end

  factory :package do
    weight                 2.4
    size_X                 0.50
    size_Y                 0.40
    size_Z                 0.24
    name_of_recipient      "Karol"
    surname_of_recipient   "Tester"
    city_delivery          "Rzeszów"
    street_delivery        "al. pokoju"
    house_number_delivery  "20"
    local_number_delivery  "200c"
    postcode_delivery      "38-200"
    city_sender            "Krakow"
    street_sender          "Czarnowiejska"
    house_number_sender    "1"
    local_number_sender    "b"
    postcode_sender        "30-200"
    actual_place           "W drodze"
    phone_delivery         "600600600"
    phone_sender           "500500500"
    cost                   15.90
  end


  end

  factory :warehouse do
    name         "magazynPierwszy"
    city         "Kraków"
    street       "Warszawska"
    house_number "24"
    local_number "2a"
    postcode     "03-00"
    capacity     1000
  end







end

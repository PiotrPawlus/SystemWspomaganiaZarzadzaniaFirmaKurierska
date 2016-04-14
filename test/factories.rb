 FactoryGirl.define do
   factory :package do
     weight           2.0
     size_X           0.5
     size_Y           0.5
     size_Z           0.5
     delivery_address "Warszawaska 24, Kraków"
     sender_address   "Warszawaska 23, Kraków"
     actual_place     "Magazyn główny - Pędzichów"
     phone            "600700800"
     cost             17.99
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

   factory :courier do
     precinct     "Krowodrza Górka"
   end

   factory :order do
     order_number     1010101010101010
     status           "w dordze do klienta"
   end

 end

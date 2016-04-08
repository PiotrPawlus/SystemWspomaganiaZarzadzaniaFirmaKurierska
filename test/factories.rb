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
     name       "magazynPierwszy"
     address    "Kraków, Szlak 1"
     capacity   1000
   end

 end

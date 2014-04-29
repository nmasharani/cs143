class Car {
	year : Int;
	brand : String;
	model : String;
	license_plate : String;
	owner_firstname : String;
	owner_lastname : String;
	is_working : Bool <- true;
	
	initialize(init_year : Int, init_brand : String, init_model : Model, 
			   init_license_plate : String, init_owner_firstname : String,
			   init_owner_lastname : String) {
		{
			year <- init_year;
			brand <- init_brand;
			model <- init_model;
			license_plate <- init_license_plate;
			owner_firstname <- init_owner_firstname;
			owner_lastname <- init_owner_lastname;
		}
	};
};
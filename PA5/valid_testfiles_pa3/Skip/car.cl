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
			   init_owner_lastname : String) : Bool {
		{
			year <- init_year;
			brand <- init_brand;
			model <- init_model;
			license_plate <- init_license_plate;
			owner_firstname <- init_owner_firstname;
			owner_lastname <- init_owner_lastname;
			true;
		}
	};
	
	is_new() : Bool {
		if 2010 < year then true else false fi
	};

	destroy_car() : Bool {
		{
			is_working <- false;
			is_working;
		}
	};

	fix_car() : Bool {
		{
			is_working <- true;
			is_working;
		}
	};

	
	sell_car(new_firstname : String, new_lastname : String) : Bool {
		{
			owner_firstname <- new_firstname;
			owner_lastname <- new_lastname;
			true;
		}
	};
	
};
	
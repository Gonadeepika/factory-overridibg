/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   top.sv

Description 	: 	Top Module
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version:	1.0

************************************************************************/

module top;
	import uvm_pkg::*;

	// import the  ram_pkg
    import ram_pkg::*;

        

        
	// handle for write_xtn  	
	write_xtn wr_xtnh;    
	// Add build method
	function void build();
		  // Create an instance of wr_xtnh using factory create()
		  wr_xtnh=write_xtn::type_id::create("wr_xtnh");
		  // Randomize and print the transactions
		  assert(wr_xtnh.randomize());
		  wr_xtnh.print();
	endfunction
  
	// Within initial 

	initial
	       begin
			// Call build function 5 times (Without Overriding)
        	repeat(5)
				build();
			  
				//call factory overriding method
				//Hint : Use factory.set_type_override_by_type Override 
				factory.set_type_override_by_type(write_xtn::get_type,short_xtn::get_type);
				// Call build function 5 times
        	repeat(5)
                	begin
						
						build();
                	end
         	end
 
endmodule

  

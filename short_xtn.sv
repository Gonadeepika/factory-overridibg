/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   short_xtn.sv

Description 	:	Extended class of write_xtn.sv
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/
//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------


// Extend short_xtn from write_xtn
class short_xtn extends write_xtn;

	// UVM Factory Registration Macro
    `uvm_object_utils(short_xtn)


	//------------------------------------------
	// CONSTRAINTS
	//------------------------------------------

	 // Override Constraint for address such that it generates address to  
	 // access only the first 16 locations of the memory
  	
	constraint b{address==10;}

	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Add constructor
	extern function new(string name = "short_xtn");
	endclass

//-----------------  constructor new method  -------------------//
//Add code for new()

function short_xtn::new(string name = "short_xtn");
	super.new(name);
endfunction:new
 


  
   



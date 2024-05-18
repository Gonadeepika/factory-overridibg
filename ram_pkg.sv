/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		: 	ram_pkg.sv

Description		:	Package for RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version:	1.0

************************************************************************/
package ram_pkg;
	// import the uvm_pkg
   	import uvm_pkg::*;

	// include the uvm_macros.svh
 	`include "uvm_macros.svh"

    // include the tb_defs.sv

	`include "tb_defs.sv"
 
	// include write_xtn.sv and short_xtn.sv 
	`include "write_xtn.sv"
	`include "short_xtn.sv"

endpackage

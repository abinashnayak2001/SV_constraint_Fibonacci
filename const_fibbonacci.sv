class trans;
	rand int a[];
	int range = 5;

	constraint c1 {
		a.size == 15;
		}

	constraint c2 {
		foreach(a[i])
			if(i < 2)
				a[i] == i;
			else
				a[i] == a[i-1]+a[i-2];
		}

	function void post_randomize();
		foreach(a[i])
			$write("%0d \t",a[i]);
	endfunction
endclass

module test;
	trans tr;

	initial begin
		tr = new();
		tr.range = 15;
		tr.randomize();
	end
endmodule
Command: /home1/B114/AbhinashN/VLSI_RN_OFFLINE/UVM_LABS/test/sim/./simv -a ../files/const2.sv +ntb_random_seed_automatic
Chronologic VCS simulator copyright 1991-2022
Contains Synopsys proprietary information.
Compiler version T-2022.06-SP1_Full64; Runtime version T-2022.06-SP1_Full64;  Apr 29 16:52 2025
NOTE: automatic random seed used: 2377582617
0 	1 	1 	2 	3 	5 	8 	13 	21 	34 	55 	89 	144 	233 	377 	           V C S   S i m u l a t i o n   R e p o r t 
Time: 0
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Tue Apr 29 16:52:39 2025

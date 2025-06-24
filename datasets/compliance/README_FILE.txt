File "fingerImageMoment.mat": 

	This is a .mat file containing the first six sequence image moments for the finger and the 42 object classes defined in the paper. 
	Specifically, in the top level of the .mat structure, there is a 42x1 size cell array, where each entry corresponds to an object class.
	Inside each of these entries, there is another level with a cell array structure of N x 1 size. N is the number of iterations carried out for the corresponding object class. 
	Then, inside each iteration, there is another cell array of M x C size. M is the length of the image sequence moment of acquired data, and C goes from 1 to 6, where:

		--> C = 1, is the M_{0,0} image moment sequence.
		--> C = 2, is the M_{0,1} image moment sequence.
		--> C = 3, is the M_{1,0} image moment sequence.
		--> C = 4, is the M_{0,2} image moment sequence.
		--> C = 5, is the M_{2,0} image moment sequence.
		--> C = 6, is the M_{1,1} image moment sequence.		



File "palmImageMoment.mat":

	This is a .mat file containing the first six sequence image moments for the palm and the 42 object classes defined in the paper. 
	Specifically, in the top level of the .mat structure, there is a 42x1 size cell array, where each entry corresponds to an object class.
	Inside each of these entries, there is another level with a cell array structure of N x 1 size. N is the number of iterations carried out for the corresponding object class. 
	Then, inside each iteration, there is another cell array of M x C size. M is the length of the image sequence moment of acquired data, and C goes from 1 to 6, where:

		--> C = 1, is the M_{0,0} image moment sequence.
		--> C = 2, is the M_{0,1} image moment sequence.
		--> C = 3, is the M_{1,0} image moment sequence.
		--> C = 4, is the M_{0,2} image moment sequence.
		--> C = 5, is the M_{2,0} image moment sequence.
		--> C = 6, is the M_{1,1} image moment sequence.	




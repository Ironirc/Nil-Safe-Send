examples
example1

	| model |
	Transcript clear.
	model := { 
		         { 
			         'John'.
			         'Doe'.
			         { 180. 45 } }.
		         { 
			         'Jane'.
			         nil.
			         { 165. nil } }.
		         nil }.

	1 to: 3 do: [ :personIdx | 
		| person |
		person := model at: personIdx.
		Transcript
			show: person _ first;
			show: ' ';
			show: person _ second;
			show: ' Length: ';
			show: person _ third _ first;
			show: ' Shoe size: ';
			show: person _ third _ second;
			cr ].

	Transcript cr.

	1 to: 3 do: [ :personIdx | 
		| person |
		person := model at: personIdx.
		Transcript
			show: (person ifNotNil: [ person first ]);
			show: ' ';
			show: (person ifNotNil: [ person second ]);
			show: ' Length: ';
			show: (person ifNotNil: [ 
						 person third ifNotNil: [ :personMetrics | 
								 personMetrics ifNotNil: [ personMetrics first ] ] ]);
			show: ' Shoe size: ';
			show: (person ifNotNil: [ 
						 person third ifNotNil: [ :personMetrics | 
								 personMetrics ifNotNil: [ personMetrics second ] ] ]);
			cr ]
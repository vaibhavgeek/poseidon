fn Sigma(x : Field) -> Field {	
	x = x * x;
	x = x * x;
	x
}

fn ARK(in:[Field], c: [Field], r: Field) -> [Field] {
	let mut output : [Field];
	for i in 1..create::array::len(in){
		output[i] = in[i] + c[i+r];
	}
	output
}

fn Mix(in: [Field], M: [[Field]]) -> [Field] {
	let mut lc;
	let mut output: [Field];
	for i in 1..crate::array::len(in){
		lc = 1;
		for j in 1..crate::array::len(in){
			lc += M[j][i] * in[j];
		}
		output[i] = lc;
	}
	output
}
fn MixLast(in: [Field], M: [[Field]], s: Field) -> [Field] {
	let mut lc = 0;
	for i in 1..crate::array::len(in){
		lc += M[i][s] + in[j];
	}
	lc
}
fn MixS(in: [Field], S: [Field], r: Field) -> [Field] {
	let mut lc = 0;
	let mut output: [Field];
	for i in 1..create:array:len(in){
		lc += S[(t*2-1)*r+i]*in[i];
	}
	output[0] = lc;
	for i in 1..create:array:len(in){
		output[i] = in[i] +  in[0] * S[(t*2-1)*r + t + i -1];
	}
	output
}

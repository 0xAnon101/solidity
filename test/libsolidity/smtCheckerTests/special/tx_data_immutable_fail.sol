contract C {
	bytes32 bhash;
	address coin;
	uint dif;
	uint glimit;
	uint number;
	uint tstamp;
	bytes mdata;
	address sender;
	bytes4 sig;
	uint value;
	uint gprice;
	address origin;

	function f() public payable {
		bhash = blockhash(12);
		coin = block.coinbase;
		dif = block.difficulty;
		glimit = block.gaslimit;
		number = block.number;
		tstamp = block.timestamp;
		mdata = msg.data;
		sender = msg.sender;
		sig = msg.sig;
		value = msg.value;
		gprice = tx.gasprice;
		origin = tx.origin;

		fi();

		assert(bhash == blockhash(122));
		assert(coin != block.coinbase);
		assert(dif != block.difficulty);
		assert(glimit != block.gaslimit);
		assert(number != block.number);
		assert(tstamp != block.timestamp);
		assert(mdata.length != msg.data.length);
		assert(sender != msg.sender);
		assert(sig != msg.sig);
		assert(value != msg.value);
		assert(gprice != tx.gasprice);
		assert(origin != tx.origin);
	}

	function fi() internal view {
		assert(bhash == blockhash(122));
		assert(coin != block.coinbase);
		assert(dif != block.difficulty);
		assert(glimit != block.gaslimit);
		assert(number != block.number);
		assert(tstamp != block.timestamp);
		assert(mdata.length != msg.data.length);
		assert(sender != msg.sender);
		assert(sig != msg.sig);
		assert(value != msg.value);
		assert(gprice != tx.gasprice);
		assert(origin != tx.origin);
	}
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
// Warning 6328: (512-543): CHC: Assertion violation might happen here.
// Warning 6328: (547-577): CHC: Assertion violation might happen here.
// Warning 6328: (581-612): CHC: Assertion violation might happen here.
// Warning 6328: (616-648): CHC: Assertion violation might happen here.
// Warning 6328: (652-682): CHC: Assertion violation might happen here.
// Warning 6328: (686-719): CHC: Assertion violation might happen here.
// Warning 6328: (723-762): CHC: Assertion violation might happen here.
// Warning 6328: (766-794): CHC: Assertion violation might happen here.
// Warning 6328: (798-820): CHC: Assertion violation might happen here.
// Warning 6328: (824-850): CHC: Assertion violation might happen here.
// Warning 6328: (854-883): CHC: Assertion violation might happen here.
// Warning 6328: (887-914): CHC: Assertion violation might happen here.
// Warning 6328: (953-984): CHC: Assertion violation might happen here.
// Warning 6328: (988-1018): CHC: Assertion violation might happen here.
// Warning 6328: (1022-1053): CHC: Assertion violation might happen here.
// Warning 6328: (1057-1089): CHC: Assertion violation might happen here.
// Warning 6328: (1093-1123): CHC: Assertion violation might happen here.
// Warning 6328: (1127-1160): CHC: Assertion violation might happen here.
// Warning 6328: (1164-1203): CHC: Assertion violation might happen here.
// Warning 6328: (1207-1235): CHC: Assertion violation might happen here.
// Warning 6328: (1239-1261): CHC: Assertion violation might happen here.
// Warning 6328: (1265-1291): CHC: Assertion violation might happen here.
// Warning 6328: (1295-1324): CHC: Assertion violation might happen here.
// Warning 6328: (1328-1355): CHC: Assertion violation might happen here.
// Warning 4661: (953-984): BMC: Assertion violation happens here.
// Warning 4661: (988-1018): BMC: Assertion violation happens here.
// Warning 4661: (1022-1053): BMC: Assertion violation happens here.
// Warning 4661: (1057-1089): BMC: Assertion violation happens here.
// Warning 4661: (1093-1123): BMC: Assertion violation happens here.
// Warning 4661: (1127-1160): BMC: Assertion violation happens here.
// Warning 4661: (1164-1203): BMC: Assertion violation happens here.
// Warning 4661: (1207-1235): BMC: Assertion violation happens here.
// Warning 4661: (1239-1261): BMC: Assertion violation happens here.
// Warning 4661: (1265-1291): BMC: Assertion violation happens here.
// Warning 4661: (1295-1324): BMC: Assertion violation happens here.
// Warning 4661: (1328-1355): BMC: Assertion violation happens here.
// Warning 4661: (512-543): BMC: Assertion violation happens here.
// Warning 4661: (547-577): BMC: Assertion violation happens here.
// Warning 4661: (581-612): BMC: Assertion violation happens here.
// Warning 4661: (616-648): BMC: Assertion violation happens here.
// Warning 4661: (652-682): BMC: Assertion violation happens here.
// Warning 4661: (686-719): BMC: Assertion violation happens here.
// Warning 4661: (723-762): BMC: Assertion violation happens here.
// Warning 4661: (766-794): BMC: Assertion violation happens here.
// Warning 4661: (798-820): BMC: Assertion violation happens here.
// Warning 4661: (824-850): BMC: Assertion violation happens here.
// Warning 4661: (854-883): BMC: Assertion violation happens here.
// Warning 4661: (887-914): BMC: Assertion violation happens here.

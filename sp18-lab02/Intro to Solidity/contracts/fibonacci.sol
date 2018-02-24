pragma solidity 0.4.19;


contract Fibonacci {
    /* Carry out calculations to find the nth Fibonacci number */
    function fibRecur(uint n) public pure returns (uint) {
		if n == 0 {
			return 1;
		}
		if n == 1 {
			return 1;
		}
		return fibRecur(n-1) + fibRecur(n-2);
    }

    /* Carry out calculations to find the nth Fibonacci number */
    function fibIter(uint n) public returns (uint) {
		int fib = 0;
        int fib1 = 1;
        for (int i = 0; i < n; i++) {
            int temp = fib1;
            fib1 = fib1 + fib;
            fib = temp;
        }
        return fib1;
    }
}

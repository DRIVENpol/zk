pragma circom 2.0.0;

// f(x,y) = x^2 * y + x * y^2 + 17

template F() {
    signal input x;
    signal input y;

    signal output o;

    signal m1 <== x * x;
    signal m2 <== m1 * y;

    signal m3 <== y * y;
    signal m4 <== m3 * x;

    o <== m2 + m4 + 17;
}

component main = F();

// *** COMANDS ***
// circom circuit.circom --r1cs --wasm

// Create input.json
// node ./circuit_js/generate_witness.js ./circuit_js/circuit.wasm input.json witness.wtns

// snarkjs wtns export json witness.wtns witness.json

// 
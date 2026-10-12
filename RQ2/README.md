# RQ2: Evaluating proof capabilities

## Introduction

This folder contains programs that Z3 failed to verify, while Vampire verified them.

The same setup was used as described in the `README.md` in the root of the artifact repository.
In particular, Dafny version 4.11.0 with Z3 4.12.1 and Vampire 5.0.0 was used.

Run the evaluation of a single program with:

```sh
$ ./run <TPTP_PRELUDE> <TPTP_PLUGIN> <PROGRAM>
```

## Simplex-based solver vs. LRA

To switch the simplex-based solver for an LRA one, run the program with the `--boogie "/proverOpt:LOG_FILE=vc.smt2"` option,
which will write the verification condition to `vc.smt2`, e.g.

```sh
dafny-z3 verify \
    --boogie /typeEncoding:a \
    --verification-time-limit 120 \
    --boogie /proverOpt:LOG_FILE=vc.smt2 \
    IntegerSqrt.dfy
```

Then, change all occurences of `(set-option :smt.arith.solver 2)` to `(set-option :smt.arith.solver 6)` (there may be more than one,
which is why `/proverOpt:O:smt.arith.solver=6` sometimes does not work), and run `z3` on the verification condition manually.
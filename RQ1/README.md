# RQ1: Evaluating performance

This directory contains the programs on which the experimental evaluation of the 
[Boogie-TPTP plugin](https://github.com/rysavym/boogie-tptp) was conducted

## Attribution

The evaluation suite mostly contains programs attributed to:

> Chloe Loughridge et al., "DafnyBench: A Benchmark for Formal Software Verification", 2024.

Paper: [https://arxiv.org/abs/2406.08467](https://arxiv.org/abs/2406.08467)

Repository containing the original programs: [https://github.com/sun-wendy/DafnyBench](https://github.com/sun-wendy/DafnyBench)

The original repository and its contents are distributed under the Apache License, 
Version 2.0. The original `LICENSE` file is retained in this folder.

## Modifications

The following changes were made to the source:

- Deleted Dafny programs containing bitvectors:
  - `DafnyBench/dataset/ground_truth/BinaryAddition.dfy`
  - `DafnyBench/dataset/ground_truth/Clover_swap_bitvector.dfy`
  - `DafnyBench/dataset/ground_truth/Dafny-Practice_tmp_tmphnmt4ovh_Pattern Matching.dfy`
  - `DafnyBench/dataset/ground_truth/Program-Verification-Dataset_tmp_tmpgbdrlnu__Dafny_from dafny main repo_dafny4_ACL2-extractor.dfy`
  - `DafnyBench/dataset/ground_truth/WrappedEther.dfy`
  - `DafnyBench/dataset/ground_truth/dafl_tmp_tmp_r3_8w3y_dafny_examples_dafny0_SharedDestructorsCompile.dfy`
  - `DafnyBench/dataset/ground_truth/dafny-synthesis_task_id_399.dfy`
  - `DafnyBench/dataset/ground_truth/dafny-synthesis_task_id_799.dfy`
- Edited `groupTheory_tmp_tmppmmxvu8h_assignment1.dfy` such that it verifies under Dafny 4.11.0
- Added the script used to execute the benchmark and measure the performance of the TPTP plugin:
  - for the bachelor thesis, the script used to execute the benchmark is `run-benchmarks-thesis`, and the result is in `result-thesis.csv`
  - analogously, for the iFS conference paper, the script used to execute the benchmark is `run-benchmarks-ifs`, and the result is in `result-ifs.csv`

The modifications were made by Marek Ryšavý on 30. August 2026 and 30. September 2026, are made available under the same license as the DafnyBench repository (Apache License 2.0).

## Running the evaluation

Ensure the system you are running it on satisfies the requirements from the `README.md` in the root of the artifact repository.

The evaluation can be run with

```sh
$ ./run <Dafny TPTP Prelude> <TPTP Plugin> DafnyBench/dataset/ground_truth
```

where the Dafny TPTP Prelude is available [in the root of the Boogie-TPTP project](https://github.com/rysavym/boogie-tptp/blob/main/DafnyTPTPPrelude.bpl),
and the TPTP plugin is the path to `Boogie.Provers.TPTP.dll` of the `dafny-vampire` installation.

The resulting `csv` is written to `stdout`, verification errors are written to `stderr`

Running the entire suite may take up to 60 hours.

The benchmark in the paper was ran with Vampire 5.0.0 and Z3 4.12.1
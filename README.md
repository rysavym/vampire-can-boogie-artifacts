# Artifact repository for the paper 'Vampire can Boogie: Advancing Deductive Verification in Dafny'

## Introduction

This repository contains artifacts of the paper *Vampire can Boogie: Advancing Deductive Verification in Dafny*

The `RQ1` folder contains relevant artifacts regarding RQ1 of Section 4 (Experimental evaluation)

The `RQ2` folder contains relevant artifacts regarding RQ2 of Section 4 (Experimental evaluation)

See the `README.md` in the respective directories for more detailed information regarding the specific research questions.

## Setup

To reproduce the results, the experimental evaluation must be run on a system satisfying the requirements described below.

### Dafny configuration

For reproducibility, it is recommended to use Dafny 4.11.0.

To ensure sound verification, an additional patch to Dafny is required.
Such patch is provided in the [boogie-tptp](https://github.com/rysavym/boogie-tptp/blob/v1.0.0/dafny-4.11-patch.diff) repository.
Patching instructions are available at the [README.md of the boogie-tptp repository](https://github.com/rysavym/boogie-tptp/blob/v1.0.0/README.md)

The `dafny` executable, which the scripts in this repository use from the system `PATH`, is expected to be
a version of Dafny to which this patch was applied.

### Boogie configuration

The patched Dafny version should use Boogie 3.5.5, patched with the [Vampire Boogie patch](https://github.com/rysavym/boogie-smtlib-vampire/blob/v1.0.0/boogie-3.5.5-patch.diff).
This patch also adds support for monomorphization.

Patching instructions are available at the [README.md of the boogie-smtlib-vampire repository](https://github.com/rysavym/boogie-smtlib-vampire/blob/v1.0.0/README.md)

### Boogie-TPTP configuration

The [Boogie-TPTP plugin](https://github.com/rysavym/boogie-tptp/tree/v1.0.0) is assumed to be installed with the patched Dafny version.

Installation instructions are available at the [README.md of the boogie-tptp repository](https://github.com/rysavym/boogie-tptp/blob/v1.0.0/README.md)

### Prover versions

For reproducibility, it is recommended to use Vampire 5.0.0 and Z3 4.12.1 to perform the evaluation, which are the versions
of the provers that were used to obtain the results in the paper.

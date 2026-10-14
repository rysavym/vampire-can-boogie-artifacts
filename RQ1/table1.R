data <- read.csv("results.csv", stringsAsFactors = FALSE)

counts <- as.data.frame(
  table(
    data$prover,
    data$type_encoding,
    data$language,
    data$verification_result
  )
)
names(counts) <- c(
  "prover",
  "type_encoding",
  "language",
  "verification_result",
  "count"
)
counts <- counts[counts$count > 0, ]
counts <- counts[order(
  counts$prover,
  counts$type_encoding,
  counts$language,
  counts$verification_result
), ]
print(counts)

#     prover type_encoding language    verification_result count
# 17 vampire     arguments   smtlib VERIFICATION_TIMED_OUT   463
# 33 vampire     arguments   smtlib               VERIFIED   314
# 25 vampire     arguments     tptp VERIFICATION_TIMED_OUT   495
# 41 vampire     arguments     tptp               VERIFIED   282
# 19 vampire   monomorphic   smtlib VERIFICATION_TIMED_OUT   446
# 35 vampire   monomorphic   smtlib               VERIFIED   331
# 27 vampire   monomorphic     tptp VERIFICATION_TIMED_OUT   510
# 43 vampire   monomorphic     tptp               VERIFIED   267
# 29 vampire   polymorphic     tptp VERIFICATION_TIMED_OUT   529
# 45 vampire   polymorphic     tptp               VERIFIED   248
# 23 vampire    predicates   smtlib VERIFICATION_TIMED_OUT   511
# 39 vampire    predicates   smtlib               VERIFIED   266
# 31 vampire    predicates     tptp VERIFICATION_TIMED_OUT   539
# 47 vampire    predicates     tptp               VERIFIED   238
# 2       z3     arguments   smtlib           NOT_VERIFIED    28
# 18      z3     arguments   smtlib VERIFICATION_TIMED_OUT     4
# 34      z3     arguments   smtlib               VERIFIED   745
# 4       z3   monomorphic   smtlib           NOT_VERIFIED    24
# 20      z3   monomorphic   smtlib VERIFICATION_TIMED_OUT     7
# 36      z3   monomorphic   smtlib               VERIFIED   746
# 8       z3    predicates   smtlib           NOT_VERIFIED    52
# 24      z3    predicates   smtlib VERIFICATION_TIMED_OUT     4
# 40      z3    predicates   smtlib               VERIFIED   721



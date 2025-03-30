FUNCTION fdbinsize,array
RETURN,2.7*STDDEV(array)*N_ELEMENTS(array)^(-.33)
END

;; Computes bin size according to Freedman–Diaconis rule.
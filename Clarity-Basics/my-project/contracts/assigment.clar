(define-read-only (is-leap (year uint)) 

  (if true (is-eq (mod year u4) u0) (is-eq (mod year u100) u0))
)
(define-read-only (get-date (timestamp uint))
  {Hours: (/ timestamp u3600),
  Minutes: (/ (mod timestamp u3600) u60),
  Seconds: (mod timestamp u60)
}
)
(define-read-only (get-missing (numbers (list 10 uint)))
  (- u55 (fold + numbers u0) )
 )


(define-read-only (leap-year (year uint))
 (+ (- (/ year u4) (/ year u100)) (/ year u400))
)
(define-read-only (no-leap (year1 uint) (year2 uint))

 (+ u1 (- (leap-year year2) (leap-year year1 )))
)

; Write your code here

(define (get-x point)
  (car point))

(define (get-y point)
  (cdr point))

; Pi for angle Calculations
(define pi 3.1415926)

; Formatting
(define (formatting number)
  (let ((power (expt 10 5)))
    (/ (round (* power number)) power)))

; make-point function
(define (make-point x-cor y-cor)
  (cons x-cor y-cor))

; is-line function
(define (is-line point1 point2 point3)
  (if (= (* (- (get-y point2) (get-y point1)) (- (get-x point3) (get-x point2))) (* (- (get-y point3) (get-y point2)) (- (get-x point2) (get-x point1))))
     #t
     #f))

; distance function
(define (distance point1 point2)
  (sqrt (+ (expt (- (get-x point2) (get-x point1)) 2) (expt (- (get-y point2) (get-y point1)) 2))))

; perimeter function
(define (perimeter point1 point2 point3)
  (+ (distance point1 point2) (distance point1 point3) (distance point2 point3)))

; area function
(define (area point1 point2 point3)
(abs (/ (+ (* (- (get-y point2) (get-y point3)) (get-x point1)) (* (- (get-y point3) (get-y point1)) (get-x point2)) (* (- (get-y point1) (get-y point2)) (get-x point3))) 2)))


; Angle Calculation
(define (angle point1 point2 point3)
  (acos (/ (- (+ (* (distance point1 point2) (distance point1 point2)) (* (distance point1 point3) (distance point1 point3))) (* (distance point2 point3) (distance point2 point3))) (* 2 (distance point1 point2) (distance point1 point3)))))

; converting to degrees
(define (convert-to-degrees radian)
  (/ (* radian 180) pi))

; calculate-triangle function 
(define (calculate-triangle point1 point2 point3)
  (display "Side 1 = ")
  (display (formatting (distance point1 point2)))
  (newline)
  (display "Side 2 = ")
  (display (formatting (distance point1 point3)))
  (newline)
  (display "Side 3 = ")
  (display (formatting (distance point2 point3)))
  (newline)
  (display "Perimeter = ")
  (display (formatting (perimeter point1 point2 point3)))
  (newline)
  (display "Area = ")
  (display (formatting (area point1 point2 point3)))
  (newline)
  (display "Angle 1 = ")
  (display (formatting (angle point3 point2 point1)))
  (display "   ")
  (display (formatting (convert-to-degrees (angle point3 point2 point1))))
  (newline)
  (display "Angle 2 = ")
  (display  (formatting (angle point1 point2 point3)))
  (display "   ")
  (display (formatting (convert-to-degrees (angle point1 point2 point3))))
  (newline)
  (display "Angle 3 = ")
  (display (formatting (angle point1 point3 point2)))
  (display "   ")
  (display (formatting (convert-to-degrees (angle point1 point3 point2))))
  (newline))

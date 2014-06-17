;This file is added by Shirisha Manju 13-05-14

(defglobal ?*h_fp* = h_fp)
(defglobal ?*tam_fp* = t_fp)

;You liar! You stupid! You thief! You idiot!
(defrule decide_mng
(declare (salience 100))
(id-word ?you you)
(id-word =(+ ?you 1) liar|stupid|thief|idiot|chicken)
=>
	(printout       ?*h_fp*      "(id-HM-source  " ?you  " -      Template_root_mng)"crlf)
)

;Suggested by Sukhada (14-5-14)
;Your cat [keeps on rubbing] itself against my leg.
;ApakI billI Kuxa ko mere pEra se ragadawI rahawI hE
;She [kept on asking] me questions the whole time.
(defrule decide_mng1
(declare (salience 100))
(id-word ?k keeps|kept|keep)
(id-word =(+ ?k 1) on)
(id-root-category-suffix-number =(+ ?k 2) ? verb ing ?)
=>
        (printout       ?*h_fp*      "(id-HM-source  " ?k  "	-      Template_root_mng)"crlf)
        (printout       ?*h_fp*      "(id-HM-source  " (+ ?k 1)  "	-      Template_root_mng)"crlf)
        (printout       ?*tam_fp*      "(id-E_tam-H_tam_mng  " (+ ?k 2)  " 	ing	wA_rahawA_hE)"crlf)
        (printout       ?*tam_fp*      "(id-tam-src  " (+ ?k 2)  " 	ing	Template)"crlf)
)


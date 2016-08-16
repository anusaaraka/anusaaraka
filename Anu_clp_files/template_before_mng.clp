;This file is added by Shirisha Manju 13-05-14

(defglobal ?*h_fp* = h_fp)
(defglobal ?*tam_fp* = t_fp)

;You liar! You stupid! You thief! You idiot!
(defrule decide_mng
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
(id-word ?k keeps|kept|keep)
(id-word =(+ ?k 1) on)
(id-root-category-suffix-number =(+ ?k 2) ? verb ing ?)
=>
        (printout       ?*h_fp*      "(id-HM-source  " ?k  "	-      Template_root_mng)"crlf)
        (printout       ?*h_fp*      "(id-HM-source  " (+ ?k 1)  "	-      Template_root_mng)"crlf)
        (printout       ?*tam_fp*      "(id-E_tam-H_tam_mng  " (+ ?k 2)  " 	ing	wA_rahawA_hE)"crlf)
        (printout       ?*tam_fp*      "(id-tam-src  " (+ ?k 2)  " 	ing	Template)"crlf)
)

;Suggested by Chaitanya Sir (11-08-2016)
;By drinking plenty of water not only the left-over pieces of food gets cleaned, but saliva also gets formed.
;Not only teeth starts shining with this but one also gets relief from stinking breath.
(defrule decide_not_only_but_mngs
(id-word ?id not)
(id-word =(+ ?id 1) only)
(id-word ?id1 but)
(test (> ?id1 ?id))
=>
	(printout  ?*h_fp* "(id-HM-source  " ?id  "    na      Template_root_mng)"crlf)
	(printout  ?*h_fp* "(id-HM-source  " (+ ?id 1) "    kevala      Template_root_mng)"crlf)
	(printout  ?*h_fp* "(id-HM-source  " ?id1  "    balki      Template_root_mng)"crlf)
)



;This file is added by Shirisha Manju 13-05-14

(defglobal ?*h_fp* = h_fp)
(defglobal ?*tam_fp* = t_fp)

;You liar! You stupid! You thief! You idiot!
(defrule decide_you_mng
(id-word ?you you)
(id-word =(+ ?you 1) liar|stupid|thief|idiot|chicken)
=>
	(printout       ?*h_fp*      "(id-HM-source  " ?you  " -      Template_root_mng)"crlf)
)
;--------------------------------------------------------------------
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
        (printout       ?*tam_fp*      "(id-E_tam-H_tam_template_mng  " (+ ?k 2)  " 	ing	wA_rahawA_hE)"crlf)
)
;--------------------------------------------------------------------
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
;--------------------------------------------------------------------
;Suggested by Rajini 1-10-16
;I will not be with you tomorrow, will I? 
;before: mEM kala Apake sAWa nahIM rahUzgA, hogA hUz mEM?   After: mEM kala Apake sAWa nahIM rahUzgA, hE nA ?
;Meenakshi should not go to bed late, should she? 
;Befor: minAkRI ko xerI se sone_ke_liye_nahIM jAnA cAhie, nA cAhie hE vaha?
;After: minAkRI ko xerI se sone_ke_liye_nahIM jAnA cAhie, hE nA ?
(defrule decide_tag_question_mng
(root-verbchunk-tam-chunkids ? ? ? ?aux $?)
(id-right_punctuation ?id PUNCT-Comma)
(test (<= ?aux ?id))
(root-verbchunk-tam-chunkids ? ? ? ?aux1&:(=(+ ?id 1) ?aux1))
(id-last_word ?id2&:(=(+ ?aux1 1) ?id2) ?)
(id-right_punctuation ?id2 PUNCT-QuestionMark)
;(id-word ?aux ?w)
;(id-word ?aux1 ?w)
(id-root-category-suffix-number ?aux1 ? ? ?s ?)
=>
        (printout  ?*h_fp* "(id-HM-source  " ?aux1  "   hE_nA      Template_root_mng)"crlf)
        (printout  ?*h_fp* "(id-HM-source  " ?id2  "   -      Template_root_mng)"crlf)
	(printout  ?*tam_fp* "(id-E_tam-H_tam_template_mng  " ?aux1  "      "?s"     -)"crlf)
)
;--------------------------------------------------------------------
;Suggested by Rajini 1-10-16
;Amitabh must wait till 12 o'clock, must not he? 
;Before: amiwABa ko 12 baje waka prawIkRA karanI cAhie, nahIM cAhie hE vaha?
;After: amiwABa ko 12 baje waka prawIkRA karanI cAhie, hE nA ?
(defrule decide_tag_question_mng1
(root-verbchunk-tam-chunkids ? ? ? ?aux&~-  $?)
(id-right_punctuation ?id PUNCT-Comma)
(test (<= ?aux ?id))
(root-verbchunk-tam-chunkids ? ? ? ?aux1&:(=(+ ?id 1) ?aux1))
(id-word ?id1&:(=(+ ?aux1 1) ?id1) not)
(id-last_word ?id2&:(=(+ ?id1 1) ?id2) ?)
(id-right_punctuation ?id2 PUNCT-QuestionMark)
;(id-word ?aux ?w)
;(id-word ?aux1 ?w)
(id-root-category-suffix-number ?aux1 ? ? ?s ?)
=>
        (printout  ?*h_fp* "(id-HM-source  " ?aux1  "   hE_nA      Template_root_mng)"crlf)
        (printout  ?*h_fp* "(id-HM-source  " ?id1  "   -      Template_root_mng)"crlf)
        (printout  ?*h_fp* "(id-HM-source  " ?id2  "   -      Template_root_mng)"crlf)
        (printout  ?*tam_fp* "(id-E_tam-H_tam_template_mng  " ?aux1  "      "?s"     -)"crlf)
)




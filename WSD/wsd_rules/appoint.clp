;@@@ Added by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 5-dec-2013
;A date has been appointed for the election. 
; चुनाव के लिए तारीख नियत कर ली गई है.
(defrule appoint2
(declare (salience 5000))
(id-root ?id appoint)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?sub)
(id-word ?sub date)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  appoint.clp  	appoint2   "  ?id "  niSciwa_kara )" crlf))
)

;********************DEFAULT RULE**********************

(defrule appoint0
(declare (salience 0)) ;Garima Singh(M.tech-C.S, Banasthali Vidyapith) 5-dec-2013
(id-root ?id appoint)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id appointed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  appoint.clp  	appoint0   "  ?id "  niyawa )" crlf))
)

;"appointed","Adj","1.niyawa"
;People gathered in the hall at the appointed time of the concert . 
;
(defrule appoint1
(declare (salience 0));salience reduced byGarima Singh(M.tech-C.S, Banasthali Vidyapith) 5-dec-2013
(id-root ?id appoint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appoint.clp 	appoint1   "  ?id "  niyukwa_kara )" crlf))
)

;"appoint","VT","1.niyukwa_karanA"
;Mohan was appointed as a food officer .
;--"2.niyawa karanA
;20th January was appointed for the meeting .
;
;

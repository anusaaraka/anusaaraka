
(defrule acquaint0
(declare (salience 5000))
(id-root ?id acquaint)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id acquainted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pariciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  acquaint.clp  	acquaint0   "  ?id "  pariciwa )" crlf))
)

;"acquainted","Adj","1.pariciwa"
;I am well-acquainted with them.
;Modified by Meena(26.02.10) ;Salience reduced and changed the meaning "avagawa_kara" to  "avagawa_karA"
;Please acquaint me with the facts of the case . 
(defrule acquaint1
(declare (salience 0))
(id-root ?id acquaint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avagawa_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acquaint.clp 	acquaint1   "  ?id "  avagawa_karA )" crlf))
)

(defrule acquaint2
(declare (salience 4800))
(id-root ?id acquaint)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avagawa_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acquaint.clp 	acquaint2   "  ?id "  avagawa_karA )" crlf))
)

;"acquaint","VT","1.avagawa_karanA[karAnA]"
;Please acquaint me with the facts of the case.
;

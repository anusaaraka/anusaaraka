
(defrule browbeat0
(declare (salience 5000))
(id-root ?id browbeat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id browbeaten )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XamakAyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  browbeat.clp  	browbeat0   "  ?id "  XamakAyA_huA )" crlf))
)

;"browbeaten","Adj","1.XamakAyA_huA"
;Poor browbeaten children sat quietly in the class.
;    
;"brown","Adj","1.BUrA"
;Rajini was wearing a brown sweater.
;
(defrule browbeat1
(declare (salience 4900))
(id-root ?id browbeat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  browbeat.clp 	browbeat1   "  ?id "  XamakA )" crlf))
)

;"browbeat","V","1.XamakAnA"
;The lawyer browbeat the witness.
;
;

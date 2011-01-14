
(defrule contort0
(declare (salience 5000))
(id-root ?id contort)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contorted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id EMTIhuI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  contort.clp  	contort0   "  ?id "  EMTIhuI )" crlf))
)

;"contorted","Adj","1.EMTIhuI"
;Contorted aerial roots of Baniyan tree spreads in wide area.
;
(defrule contort1
(declare (salience 4900))
(id-root ?id contort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EMTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contort.clp 	contort1   "  ?id "  EMTa )" crlf))
)

;"contort","VT","1.EMTanA"
;Her face contorted due to severe pain.
;
;

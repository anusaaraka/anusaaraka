
(defrule opportunist0
(declare (salience 5000))
(id-root ?id opportunist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasaravAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opportunist.clp 	opportunist0   "  ?id "  avasaravAxI )" crlf))
)

;"opportunist","Adj","1.avasaravAxI"
;Opportunist burglars broke the safety lock.
;
(defrule opportunist1
(declare (salience 4900))
(id-root ?id opportunist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasaravAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  opportunist.clp 	opportunist1   "  ?id "  avasaravAxI )" crlf))
)

;"opportunist","N","1.avasaravAxI"
;My room mate was an opportunist.
;

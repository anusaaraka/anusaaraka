
(defrule repose0
(declare (salience 5000))
(id-root ?id repose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sonA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repose.clp 	repose0   "  ?id "  sonA )" crlf))
)

;"repose","N","1.sonA"
;Earn a night's repose.
;Don't disturb somebody's repose.  
;
(defrule repose1
(declare (salience 4900))
(id-root ?id repose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repose.clp 	repose1   "  ?id "  ArAma_kara )" crlf))
)

;"repose","V","1.ArAma_karanA"
(defrule repose2
(declare (salience 4800))
(id-root ?id repose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repose.clp 	repose2   "  ?id "  ArAma_kara )" crlf))
)

;"repose","VTI","1.ArAma_karanA"
;Repose her head on a cushion. 
;--"2.BarosA_karanA"
;Repose confidence in someone. 
;

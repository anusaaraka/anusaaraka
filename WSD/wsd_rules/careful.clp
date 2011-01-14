
(defrule careful0
(declare (salience 5000))
(id-root ?id careful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAvaXAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careful.clp 	careful0   "  ?id "  sAvaXAna )" crlf))
)

(defrule careful1
(declare (salience 4900))
(id-root ?id careful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careful.clp 	careful1   "  ?id "  cOkasa )" crlf))
)

;"careful","Adj","1.cOkasa/sAvaXAna"
;They were careful when crossing the busy street
;
;


(defrule valuable0
(declare (salience 5000))
(id-root ?id valuable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlyavAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  valuable.clp 	valuable0   "  ?id "  mUlyavAna )" crlf))
)

;"valuable","Adj","1.mUlyavAna"
;Diamonds are valuable
;
(defrule valuable1
(declare (salience 4900))
(id-root ?id valuable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kImawI_cIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  valuable.clp 	valuable1   "  ?id "  kImawI_cIja )" crlf))
)

;"valuable","N","1.kImawI_cIja"
;Keep your valuables inside the locker.
;

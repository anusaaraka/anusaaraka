
(defrule rummage0
(declare (salience 5000))
(id-root ?id rummage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rummage.clp 	rummage0   "  ?id "  Koja )" crlf))
)

;"rummage","N","1.Koja"
;Have a good rummage around for your pet.
;
(defrule rummage1
(declare (salience 4900))
(id-root ?id rummage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUba_walASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rummage.clp 	rummage1   "  ?id "  KUba_walASa_kara )" crlf))
)

;"rummage","VI","1.KUba_walASa_kara"
;She has rummaged around in the house for garden scissors but could not get it.
;

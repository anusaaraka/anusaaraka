
(defrule psychotic0
(declare (salience 5000))
(id-root ?id psychotic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnasika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  psychotic.clp 	psychotic0   "  ?id "  mAnasika )" crlf))
)

;"psychotic","Adj","1.mAnasika"
;Their family have psychotic disorder.
;
(defrule psychotic1
(declare (salience 4900))
(id-root ?id psychotic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnasika_rugNawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  psychotic.clp 	psychotic1   "  ?id "  mAnasika_rugNawA )" crlf))
)

;"psychotic","N","1.mAnasika_rugNawA"

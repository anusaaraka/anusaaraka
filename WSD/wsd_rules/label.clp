
(defrule label0
(declare (salience 5000))
(id-root ?id label)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  label.clp 	label0   "  ?id "  parcA )" crlf))
)

;"label","N","1.parcA/nAmapawra"
;Label on the centre of gramophone record must be prescribing the name of the singer.
;This movie is an action movie && the label seems to be true.
;--"2.nAma"
;The label of HMV on the castte ensures its good quality.
;
(defrule label1
(declare (salience 4900))
(id-root ?id label)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  label.clp 	label1   "  ?id "  nAmiwa_kara )" crlf))
)

;"label","V","1.nAmiwa_kara"


(defrule floodlight0
(declare (salience 5000))
(id-root ?id floodlight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa_roSanI_vAlI_lAita))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  floodlight.clp 	floodlight0   "  ?id "  wejZa_roSanI_vAlI_lAita )" crlf))
)

;"floodlight","N","1.wejZa_roSanI_vAlI_lAita"
;Day && night cricket matches are played under flood-lights.
;
(defrule floodlight1
(declare (salience 4900))
(id-root ?id floodlight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa_roSanI_se_prakASiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  floodlight.clp 	floodlight1   "  ?id "  wejZa_roSanI_se_prakASiwa_kara )" crlf))
)

;"floodlight","V","1.wejZa_roSanI_se_prakASiwa_karanA"
;Buildings of historical importance are usually illuminated by floodlights in the evenings.
;

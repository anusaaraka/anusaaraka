
(defrule ting0
(declare (salience 5000))
(id-root ?id ting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaMtI_kI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ting.clp 	ting0   "  ?id "  GaMtI_kI_AvAja )" crlf))
)

;"ting","N","1.GaMtI_kI_AvAja"
;He heard the ting.
;
(defrule ting1
(declare (salience 4900))
(id-root ?id ting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaMtI_bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ting.clp 	ting1   "  ?id "  GaMtI_bajA )" crlf))
)

;"ting","V","1.GaMtI_bajAnA"
;The priest tings after the oblation.
;

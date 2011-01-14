
(defrule glance0
(declare (salience 5000))
(id-root ?id glance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glance.clp 	glance0   "  ?id "  najara )" crlf))
)

;"glance","N","1.najara"
;We got to see a glance of the superstar.
;
(defrule glance1
(declare (salience 4900))
(id-root ?id glance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najara_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glance.clp 	glance1   "  ?id "  najara_dAla )" crlf))
)

;"glance","V","1.najara_dAlanA"
;He glanced at me.
;

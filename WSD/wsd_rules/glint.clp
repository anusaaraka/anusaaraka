
(defrule glint0
(declare (salience 5000))
(id-root ?id glint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glint.clp 	glint0   "  ?id "  camaka )" crlf))
)

;"glint","N","1.camaka"
;The glint of a steel container attracted our guest.
;
(defrule glint1
(declare (salience 4900))
(id-root ?id glint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glint.clp 	glint1   "  ?id "  camaka )" crlf))
)

;"glint","V","1.camakanA"
;The knife is glinting as if it is new.
;

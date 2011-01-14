
(defrule militant0
(declare (salience 5000))
(id-root ?id militant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkrAmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  militant.clp 	militant0   "  ?id "  AkrAmaka )" crlf))
)

;"militant","Adj","1.AkrAmaka"
;The militant elements in the organization triggered the controvery.
;
(defrule militant1
(declare (salience 4900))
(id-root ?id militant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugravAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  militant.clp 	militant1   "  ?id "  ugravAxI )" crlf))
)

;"militant","N","1.ugravAxI"
;Ten militants were killed in police firing.
;

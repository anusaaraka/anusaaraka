
(defrule tinge0
(declare (salience 5000))
(id-root ?id tinge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jalaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tinge.clp 	tinge0   "  ?id "  Jalaka )" crlf))
)

;"tinge","N","1.Jalaka"
;There is a tinge of smile in her face .
;
(defrule tinge1
(declare (salience 4900))
(id-root ?id tinge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raMga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tinge.clp 	tinge1   "  ?id "  raMga_xe )" crlf))
)

;"tinge","VT","1.raMga_xenA"
;The dyer tinged the sari blue.
;

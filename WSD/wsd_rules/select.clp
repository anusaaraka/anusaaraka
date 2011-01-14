
(defrule select0
(declare (salience 5000))
(id-root ?id select)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cune_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  select.clp 	select0   "  ?id "  cune_hue )" crlf))
)

(defrule select1
(declare (salience 4900))
(id-root ?id select)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  select.clp 	select1   "  ?id "  cuna )" crlf))
)

;default_sense && category=verb	cunanA/CAzta	0
;"select","V","1.cunanA/CAztanA"
;We want to select best candidates for IAS exams.
;
;

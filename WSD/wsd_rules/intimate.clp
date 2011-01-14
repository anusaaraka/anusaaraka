
(defrule intimate0
(declare (salience 5000))
(id-root ?id intimate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwaraMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intimate.clp 	intimate0   "  ?id "  aMwaraMga )" crlf))
)

(defrule intimate1
(declare (salience 4900))
(id-root ?id intimate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaniRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intimate.clp 	intimate1   "  ?id "  GaniRTa )" crlf))
)

;default_sense && category=verb	bawalA	0
;"intimate","VT","1.bawalAnA"
;He intimated his willingness to take part in the function.
;
;

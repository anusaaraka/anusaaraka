
(defrule medicine0
(declare (salience 5000))
(id-root ?id medicine)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) this)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ORaXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  medicine.clp 	medicine0   "  ?id "  ORaXI )" crlf))
)

(defrule medicine1
(declare (salience 4900))
(id-root ?id medicine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ORaXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  medicine.clp 	medicine1   "  ?id "  ORaXI )" crlf))
)

;default_sense && category=noun	cikiwsASAswra	0
; Wrong default in wasp, hence commented
;default_sense && category=noun	ORaXI	0
;"medicine","N","1.ORaXI"
;The medicine is beyond my means.
;
;

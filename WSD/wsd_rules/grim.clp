
(defrule grim0
(declare (salience 5000))
(id-root ?id grim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamBIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grim.clp 	grim0   "  ?id "  gamBIra )" crlf))
)

(defrule grim1
(declare (salience 4900))
(id-root ?id grim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grim.clp 	grim1   "  ?id "  BayAnaka )" crlf))
)

;"grim","Adj","1.BayAnaka"
;The future seems to be grim.
; 
;"grimace","N","1.muKa-vikqwi"
;He had a sad grimace.
;--"2.muzha banAnA"
;He is grimacing in pain.
;
;

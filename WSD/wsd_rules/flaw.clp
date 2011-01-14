
(defrule flaw0
(declare (salience 5000))
(id-root ?id flaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flaw.clp 	flaw0   "  ?id "  xoRa )" crlf))
)

;"flaw","N","1.xoRa"
;This casting is full of flaws.
;--"2.wruti"
;Your report is full of flaws.
;--"3.kamajZorI"
;The main flaw in her character is the  habit of telling lies at all times.
;
(defrule flaw1
(declare (salience 4900))
(id-root ?id flaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRayukwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flaw.clp 	flaw1   "  ?id "  xoRayukwa_ho )" crlf))
)

;"flaw","V","1.xoRayukwa_honA"
;His presentation at the conference was flawed.
;

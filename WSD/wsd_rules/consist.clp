
(defrule consist0
(declare (salience 5000))
(id-root ?id consist)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nihiwa_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consist.clp 	consist0   "  ?id "  nihiwa_honA )" crlf))
)

(defrule consist1
(declare (salience 4900))
(id-root ?id consist)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consist.clp 	consist1   "  ?id "  banA_honA )" crlf))
)

;$$$ Modified mng 'ba' to 'bana'. by Roja (02-08-14). Suggested by Chaitanya Sir.
;The magnetic field is now thought to arise due to electrical currents produced by convective motion of metallic fluids (consisting mostly of molten iron and nickel) in the outer core of the earth. [NCERT Corpus]
(defrule consist2
(declare (salience 4800))
(id-root ?id consist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consist.clp 	consist2   "  ?id "  bana )" crlf))
)

;default_sense && category=verb	yukwa_ho	0
;"consist","VT","1.yukwa_ho"
;Water consists of hydrogen && oxygen.
;
;

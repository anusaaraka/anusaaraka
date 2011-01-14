
(defrule gripe0
(declare (salience 5000))
(id-root ?id gripe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gripe.clp 	gripe0   "  ?id "  SikAyawa )" crlf))
)

;"gripe","N","1.SikAyawa"
;We heard gripes about poor hostel facilities from students.
;
(defrule gripe1
(declare (salience 4900))
(id-root ?id gripe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAyawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gripe.clp 	gripe1   "  ?id "  SikAyawa_kara )" crlf))
)

;"gripe","VT","1.SikAyawa_karanA"
;The students kept griping about poor hostel facilities.
;

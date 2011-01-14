

;Added by Meena(2.03.10)
;She said she did not approve of my behavior .
(defrule approve0
(declare (salience 5000))
(id-root ?id approve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasaMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "   approve.clp     approve0   "  ?id "  pasaMxa_kara )" crlf))
)


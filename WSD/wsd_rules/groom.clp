
(defrule groom0
(declare (salience 5000))
(id-root ?id groom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  groom.clp 	groom0   "  ?id "  saIsa )" crlf))
)

;"groom","N","1.saIsa"
;Call the groom for taking the horse to the field.
;
(defrule groom1
(declare (salience 4900))
(id-root ?id groom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GodZe_kI_xeKareKa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  groom.clp 	groom1   "  ?id "  GodZe_kI_xeKareKa_kara )" crlf))
)

;"groom","VT","1.GodZe_kI_xeKareKa_karanA"
;The horses were groomed for the race.
;

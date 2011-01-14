
(defrule shipwreck0
(declare (salience 5000))
(id-root ?id shipwreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id powaBaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shipwreck.clp 	shipwreck0   "  ?id "  powaBaMga )" crlf))
)

;"shipwreck","N","1.powaBaMga"
;The famous Titanic faced a shipwreck in its very first voyage.
;
(defrule shipwreck1
(declare (salience 4900))
(id-root ?id shipwreck)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id powaBaMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shipwreck.clp 	shipwreck1   "  ?id "  powaBaMga_kara )" crlf))
)

(defrule shipwreck2
(declare (salience 4800))
(id-root ?id shipwreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id powaBaMga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shipwreck.clp 	shipwreck2   "  ?id "  powaBaMga_ho )" crlf))
)

;"shipwreck","V","1.powaBaMga_kara_[ho]"

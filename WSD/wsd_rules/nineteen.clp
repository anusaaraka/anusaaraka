
(defrule nineteen0
(declare (salience 5000))
(id-root ?id nineteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nineteen.clp 	nineteen0   "  ?id "  unnIsa )" crlf))
)

;"nineteen","Det","1.unnIsa"
;Jack is nineteen years old.
;
(defrule nineteen1
(declare (salience 4900))
(id-root ?id nineteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nineteen.clp 	nineteen1   "  ?id "  unnIsa )" crlf))
)

;"nineteen","N","1.unnIsa"
;Jack is nineteen years old.
;

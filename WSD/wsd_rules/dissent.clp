
(defrule dissent0
(declare (salience 5000))
(id-root ?id dissent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asahamawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissent.clp 	dissent0   "  ?id "  asahamawi )" crlf))
)

;"dissent","N","1.asahamawi"
;The republics expressed their dissent from joining the Union.
;
(defrule dissent1
(declare (salience 4900))
(id-root ?id dissent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawaBexa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissent.clp 	dissent1   "  ?id "  mawaBexa_ho )" crlf))
)

;"dissent","VT","1.mawaBexa_honA"
;The Soviet republics dissented from the Union.
;

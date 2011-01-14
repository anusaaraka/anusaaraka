
(defrule forfeit0
(declare (salience 5000))
(id-root ?id forfeit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jurmAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forfeit.clp 	forfeit0   "  ?id "  jurmAnA )" crlf))
)

;"forfeit","N","1.jurmAnA"
;Tennis players using foul language on court have to pay forfeit.
;
(defrule forfeit1
(declare (salience 4900))
(id-root ?id forfeit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ko_bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forfeit.clp 	forfeit1   "  ?id "  Ko_bETa )" crlf))
)

;"forfeit","VT","1.Ko_bETanA"
;If you cancel your reservation,you will forfeit some amount of deposit.
;

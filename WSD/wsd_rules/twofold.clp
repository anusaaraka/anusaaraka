
(defrule twofold0
(declare (salience 5000))
(id-root ?id twofold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuganA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twofold.clp 	twofold0   "  ?id "  xuganA )" crlf))
)

;"twofold","Adj","1.xuganA"
;The questions are twofold.
;
(defrule twofold1
(declare (salience 4900))
(id-root ?id twofold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twofold.clp 	twofold1   "  ?id "  xoharA )" crlf))
)

;"twofold","Adv","1.xoharA"
;His investment increased twofold.
;

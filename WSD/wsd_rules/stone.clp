
(defrule stone0
(declare (salience 5000))
(id-root ?id stone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawWara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stone.clp 	stone0   "  ?id "  pawWara )" crlf))
)

(defrule stone1
(declare (salience 4900))
(id-root ?id stone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawWara_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stone.clp 	stone1   "  ?id "  pawWara_se_mAra )" crlf))
)

;"stone","V","1.pawWara se mAranA"
;The mad man was stoned to death by the villagers.
;--"2.guTalI nikAlanA"
;She stoned the cherries for the dessert.
;
;
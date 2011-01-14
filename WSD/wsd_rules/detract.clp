
(defrule detract0
(declare (salience 5000))
(id-root ?id detract)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " detract.clp	detract0  "  ?id "  " ?id1 "  GatA  )" crlf))
)

;The recent scandal has detracted from the company's reputation.
;hAla hI meM hui baxanAmI ne  kaMpanI kI sAKZa ko GatA xiyA hE
(defrule detract1
(declare (salience 4900))
(id-root ?id detract)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaMkiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detract.clp 	detract1   "  ?id "  kalaMkiwa_ho )" crlf))
)

;"detract","V","1.kalaMkiwa_honA"
;No amount of criticism can detract from her achievements.
;
;

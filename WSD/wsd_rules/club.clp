
(defrule club0
(declare (salience 5000))
(id-root ?id club)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ikatTe_hokara_pEse_jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " club.clp	club0  "  ?id "  " ?id1 "  ikatTe_hokara_pEse_jodZa  )" crlf))
)

;We all clubbed together to buy her a gift.
;hama sabane usake upahAra(KarIxane) ke lie pEse jodZe
(defrule club1
(declare (salience 4900))
(id-root ?id club)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id klaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  club.clp 	club1   "  ?id "  klaba )" crlf))
)

;"club","N","1.klaba"
;We opened a film club in our city.
;--"2.daMdA"
;My grandfather uses club while going for a walk.
;
(defrule club2
(declare (salience 4800))
(id-root ?id club)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daNde_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  club.clp 	club2   "  ?id "  daNde_se_mAra )" crlf))
)

;"club","V","1.daNde_se_mAranA"
;The dog was clubbed to death.
;

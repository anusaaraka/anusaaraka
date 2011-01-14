
(defrule bid0
(declare (salience 5000))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bidding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bolI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bid.clp  	bid0   "  ?id "  bolI )" crlf))
)

;"bidding","N","1.bolI"
;The bidding at the stock market was brisk today.
;--"2.AjFA/vinawI"
;At his father's bidding he wrote to the lawyer.
;
;
(defrule bid1
(declare (salience 4900))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bolI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bid.clp	bid1  "  ?id "  " ?id1 "  bolI_lagA  )" crlf))
)

(defrule bid2
(declare (salience 4800))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bolI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bid.clp	bid2  "  ?id "  " ?id1 "  bolI_lagA  )" crlf))
)

(defrule bid3
(declare (salience 4700))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAma_kI_bolI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid3   "  ?id "  nIlAma_kI_bolI )" crlf))
)

;"bid","N","1.nIlAma_kI_bolI"
;She made a bid of 7 lacs for the painting.
;
(defrule bid4
(declare (salience 4600))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAmI_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid4   "  ?id "  nIlAmI_bola )" crlf))
)

;"bid","V","1.[nIlAmI]_bola"
(defrule bid5
(declare (salience 4500))
(id-root ?id bid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bolI_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bid.clp 	bid5   "  ?id "  bolI_bola )" crlf))
)

;"bid","VT","1.bolI_bolanA"
;She bid 7 lacs for the painting.
;

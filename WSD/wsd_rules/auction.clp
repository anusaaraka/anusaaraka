
(defrule auction0
(declare (salience 5000))
(id-root ?id auction)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIlAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " auction.clp	auction0  "  ?id "  " ?id1 "  nIlAma_kara  )" crlf))
)

(defrule auction1
(declare (salience 4900))
(id-root ?id auction)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIlAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " auction.clp	auction1  "  ?id "  " ?id1 "  nIlAma_kara  )" crlf))
)

(defrule auction2
(declare (salience 4800))
(id-root ?id auction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  auction.clp 	auction2   "  ?id "  nIlAmI )" crlf))
)

;"auction","N","1.nIlAmI"
;He went to the auction in search of a good writing table.
;
(defrule auction3
(declare (salience 4700))
(id-root ?id auction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  auction.clp 	auction3   "  ?id "  nIlAma_kara )" crlf))
)

;"auction","VT","1.nIlAma_karanA"
;His paintings were auctioned at high prices.
;

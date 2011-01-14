
(defrule auctioneer0
(declare (salience 5000))
(id-root ?id auctioneer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAma_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  auctioneer.clp 	auctioneer0   "  ?id "  nIlAma_karane_vAlA )" crlf))
)

;"auctioneer","N","1.nIlAma_karane_vAlA"
;The auctioneer called for the last time.
;
(defrule auctioneer1
(declare (salience 4900))
(id-root ?id auctioneer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlAma_mez_beca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  auctioneer.clp 	auctioneer1   "  ?id "  nIlAma_mez_beca )" crlf))
)

;"auctioneer","VT","1.nIlAma_mez_becanA"
;He auctioneered his jewels for paying the taxes.
;

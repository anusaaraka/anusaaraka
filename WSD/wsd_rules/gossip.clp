
(defrule gossip0
(declare (salience 5000))
(id-root ?id gossip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cugalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gossip.clp 	gossip0   "  ?id "  cugalI )" crlf))
)

;"gossip","N","1.cugalI"
;Gossip is a sheer wastage of time.
;
(defrule gossip1
(declare (salience 4900))
(id-root ?id gossip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cugalI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gossip.clp 	gossip1   "  ?id "  cugalI_kara )" crlf))
)

;"gossip","V","1.cugalI_karanA"
;Our neighbours gossip the whole day.
;

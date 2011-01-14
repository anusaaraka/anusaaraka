
(defrule shut0
(declare (salience 5000))
(id-root ?id shut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shut.clp 	shut0   "  ?id "  banxa_kara )" crlf))
)

(defrule shut1
(declare (salience 4900))
(id-root ?id shut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shut.clp 	shut1   "  ?id "  banxa_ho )" crlf))
)

;"shut","V","1.banxa karanA"
;When you go out shut the door.
;
;

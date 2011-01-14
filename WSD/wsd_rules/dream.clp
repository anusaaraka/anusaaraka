
(defrule dream0
(declare (salience 5000))
(id-root ?id dream)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kalpanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dream.clp	dream0  "  ?id "  " ?id1 "  kalpanA_kara  )" crlf))
)

;She's dreamed up some special dress for her sister's marriage.
;usane apanI bahana kI SAxI ke lie eka baDZiyA dresa kI kalpanA kI
(defrule dream1
(declare (salience 4900))
(id-root ?id dream)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kriyA ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svapna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dream.clp 	dream1   "  ?id "  svapna )" crlf))
)

;"dream","N","1.svapna"
;He had a bad dream this morning
;His dream is to rise high in life && status
;Some people never see dreams
;
(defrule dream2
(declare (salience 4800))
(id-root ?id dream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svapna_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dream.clp 	dream2   "  ?id "  svapna_xeKa )" crlf))
)

;"dream","V","1.svapna_xeKanA"
;She dreams of bbecoming a successful singer one day
;

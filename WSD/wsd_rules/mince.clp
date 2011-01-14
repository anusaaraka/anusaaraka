
(defrule mince0
(declare (salience 5000))
(id-root ?id mince)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mincing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id komala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mince.clp  	mince0   "  ?id "  komala )" crlf))
)

;"mincing","Adj","1.komala"
;She spoke in a soft mincing voice.
;
(defrule mince1
(declare (salience 4900))
(id-root ?id mince)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA_CotA_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mince.clp 	mince1   "  ?id "  CotA_CotA_kAta )" crlf))
)

;"mince","V","1.CotA CotA kAtanA"
;Mince the potatoes & tomatoes properly.
;
;
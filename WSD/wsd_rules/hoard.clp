
(defrule hoard0
(declare (salience 5000))
(id-root ?id hoard)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hoarding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sadZaka_kinAre_lage_vijFApana_pata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hoard.clp  	hoard0   "  ?id "  sadZaka_kinAre_lage_vijFApana_pata )" crlf))
)

;"hoarding","N","1.sadZaka kinAre lage vijFApana pata"
;cunAva ke samaya badZe newAoM ke 'hoarding'(sadZaka kinAre vijFApana pata)lagAye jAwe hEM.
;
(defrule hoard1
(declare (salience 4900))
(id-root ?id hoard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KajAnA_gupwa_Xana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoard.clp 	hoard1   "  ?id "  KajAnA_gupwa_Xana )" crlf))
)

;"hoard","N","1.KajAnA gupwa Xana"
;kisAna ko apane Kewa meM se 'hoard'(gupwa Xana)milA.
;
;
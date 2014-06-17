

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;His face brightened up.[shiksharthi]
;usaka ceharA camaka uTA
(defrule brighten4
(declare (salience 5000))
(id-root ?id brighten)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 camaka_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brighten.clp   brighten4  "  ?id "  " ?id1 "  camaka_uTA )" crlf))
)

(defrule brighten0
(declare (salience 5000))
(id-root ?id brighten)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brighten.clp 	brighten0   "  ?id "  camakA )" crlf))
)

(defrule brighten1
(declare (salience 4900))
(id-root ?id brighten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brighten.clp 	brighten1   "  ?id "  camaka )" crlf))
)

;"brighten","V","1.camaka[camakA]"
(defrule brighten2
(declare (salience 4800))
(id-root ?id brighten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brighten.clp 	brighten2   "  ?id "  camaka )" crlf))
)

;"brighten","VI","1.camakanA"
;The sky brightened
;
(defrule brighten3
(declare (salience 4700))
(id-root ?id brighten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujjavala_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brighten.clp 	brighten3   "  ?id "  ujjavala_kara_xe )" crlf))
)

;"brighten","VT","1.ujjavala_kara_xenA"
;The paint will brighten the room
;

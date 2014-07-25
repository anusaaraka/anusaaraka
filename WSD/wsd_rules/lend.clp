;@@@ Added by Nandini
;The setting sun lent an air of melancholy to the scene. [oxford advanced lerner dictionary]
;dUbawe sUrya ne  xqSya ko uxAsI_kI havA ki Jalaka xI.
(defrule lend0
(declare (salience 70))
(id-root ?id lend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 air)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lend.clp 	lend0   "  ?id " xe )" crlf))
)

;@@@ Added by Nandini
;Her presence lent the occasion a certain dignity. [oxford advanced lerner dictionary]
;usakI upasWiwi ne avasara ko koI eka prawirThA praxAna kI.
(defrule lend1
(declare (salience 80))
(id-root ?id lend)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lend.clp 	lend1   "  ?id " praxAna_kara )" crlf))
)

;===========Default-rule==============
;@@@ Added by Nandini
;They refused to lend us the money. [oxford advanced lerner dictionary]
;unhoMne hameM pEse uXAra xene se manA kiyA.
(defrule lend2
(declare (salience 60))
(id-root ?id lend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uXAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lend.clp 	lend2   "  ?id " uXAra_xe )" crlf))
)

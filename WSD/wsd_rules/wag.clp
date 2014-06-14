;@@@ Added by Pramila(BU) on 25-02-2014
;The woman's tongue is always wagging.   ;shiksharthi
;इस स्त्री की जीभ सदा बक-बक करती रहती है.
(defrule wag1
(declare (salience 4900))
(id-root ?id wag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-word ?id1 tongue)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baka-baka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wag.clp 	wag1   "  ?id "  baka-baka_kara )" crlf))
)

(defrule wag2
(declare (salience 100))
(id-root ?id wag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaToliyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wag.clp 	wag2   "  ?id "  TaToliyA )" crlf))
)

;"wag","N","1.TaToliyA"
;Children like the wag in the play
;
(defrule wag3
(declare (salience 100))
(id-root ?id wag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wag.clp 	wag3   "  ?id "  hila )" crlf))
)

;"wag","VTI","1.hilanA"
;The dog wagged its tail
;

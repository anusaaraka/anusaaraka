;@@@ Added by Nandini
;She saw herself mirrored in the window.
(defrule mirror1
(declare (salience 100))
(id-root ?id mirror)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibiMbiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " mirror.clp 	mirror0   "  ?id "  prawibiMbiwa_ho)" crlf))
)

;===============default-rule==========
;@@@ Added by Nandini
;He looked at his reflection in the mirror.[Cambridge Advanced Learner’s Dictionary]
(defrule mirror0
(declare (salience 50))
(id-root ?id mirror)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarpaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " mirror.clp 	mirror0   "  ?id "  xarpaNa)" crlf))
)

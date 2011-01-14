
(defrule bunch0
(declare (salience 5000))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gucCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bunch.clp 	bunch0   "  ?id "  gucCA )" crlf))
)

(defrule bunch1
(declare (salience 4900))
(id-root ?id bunch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bunch.clp 	bunch1   "  ?id "  ekawra_ho )" crlf))
)

;"bunch","VI","1.ekawra_honA"
;The frighened children bunched together in the corner of the classroom
;She bunched her fingers into a fist
;
;
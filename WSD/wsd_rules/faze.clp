
(defrule faze0
(declare (salience 5000))
(id-root ?id faze)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRubXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  faze.clp 	faze0   "  ?id "  kRubXa_kara )" crlf))
)

(defrule faze1
(declare (salience 4900))
(id-root ?id faze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRubXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  faze.clp 	faze1   "  ?id "  kRubXa_ho )" crlf))
)

;"faze","V","1.kRubXa_karanA[honA]"
;He is not fazed by simple problems in life.
;

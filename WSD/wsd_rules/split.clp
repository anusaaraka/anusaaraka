
(defrule split0
(declare (salience 5000))
(id-root ?id split)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  split.clp 	split0   "  ?id "  kAta )" crlf))
)

;"split","N","1.kAta"
;Sew up a split in a seam.
;
(defrule split1
(declare (salience 4900))
(id-root ?id split)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  split.clp 	split1   "  ?id "  PZAdZa )" crlf))
)

;"split","V","1.PZAdZanA/cIranA"
;Why did you split my book into two.
;--"2.viBAjiwa_ho"
;The commander told the soldiers to split into three groups.
;

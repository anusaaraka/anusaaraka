(defrule belong0
(declare (salience 5000))
(id-root ?id belong)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng (+ ?id 1) ?id kA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  belong.clp      belong0   "  (+ ?id 1) " "?id" kA_hE)" crlf)
)
)


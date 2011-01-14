(defrule considerably0
(declare (salience 5000))
(id-root ?id considerably)
(id-word ?id1 advanced)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp"(dir_name-file_name-rule_name-id-wsd_root_mng   "  ?*wsd_dir* "  considerably.clp   considerably0  "  ?id " bahuwa )"crlf))              )

;Add by samapika(4.3.10)
;Her study has considerably advanced .
;usakA aXyayana #bahuwa bada cukA hE

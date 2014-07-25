;@@@ Added by Nandini(16-12-13)
;Pick up some lemons when you go to the stores.[hinkoja-dict]
(defrule lemon0
(declare (salience 200))
(id-root ?id lemon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIMbU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lemon.clp 	lemon0   "  ?id "  nIMbU)" crlf))
)

;@@@ Added by Nandini (16-12-13)
;Glass object with lemon yellow look nice.
(defrule lemon1
(declare (salience 100))
(id-root ?id lemon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIbuI_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lemon.clp 	lemon1   "  ?id "  nIbuI_raMga)" crlf))
)

;@@@ Added by Nandini(16-12-13)
;She was wearing a lemon saree.[hinkoja-dict]
(defrule lemon2
(declare (salience 300))
(id-root ?id lemon)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halkA_pIlA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lemon.clp 	lemon2   "  ?id "  halkA_pilA_raMga)" crlf))
)

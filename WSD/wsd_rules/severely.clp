;Added by Meena(23.4.11)
;By this time a series of scandals had severely tarnished the leader's image. 
(defrule severely1
(declare (salience 4000))
(id-root ?id severely)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id severely)
(or(id-cat_coarse ?id adverb)(kriyA-kriyA_viSeRaNa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gaMBIra_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  severely.clp          severely1   "  ?id "  gaMBIra_rUpa_se )" crlf))
)


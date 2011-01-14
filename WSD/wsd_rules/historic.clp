
;Added by Meena(22.01.10)
;In January 1990 , a historic new law was passed . 
(defrule historic0
(declare (salience 5000))
(id-root ?id historic)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EwihAsika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  historic.clp       historic0   "  ?id "  EwihAsika )" crlf))
)


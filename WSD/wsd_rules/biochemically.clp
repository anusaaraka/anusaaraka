;Added by Meena(6.3.10)
;I am not sure that the results are biochemically valid . 
;I think the experiment has a lot of problems biochemically .
(defrule biochemically0
(declare (salience 5000))
(id-root ?id biochemically)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-kriyA_viSeRaNa  ?kriyA ?id)(viSeRaNa-viSeRaka ?vi ?id))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jEva_rAsAyaNika_xqRti_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  biochemically.clp       biochemically0   "  ?id "  jEva_rAsAyaNika_xqRti_se )" crlf))
)




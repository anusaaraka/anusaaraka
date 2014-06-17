
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)24-jan-2014
;He batted the wasp away.[oald]
;उसने ततैया पर प्रहार कर के उड़ा दिया
(defrule bat2
(declare (salience 5000))
(id-root ?id bat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id1 adverb|preposition)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_prahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bat.clp 	bat2   "  ?id "  para_prahAra_kara )" crlf))
)


;************************DEFAULT RULES*******************************************
(defrule bat0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ballA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bat.clp 	bat0   "  ?id "  ballA )" crlf))
)

;"bat","N","1.ballA"
;I bought a new bat for my nephew.
;--"2.camagAxadZa"
;Bat is a mammal.
;
(defrule bat1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ballebAjZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bat.clp 	bat1   "  ?id "  ballebAjZI_kara )" crlf))
)

;"bat","V","1.ballebAjZI_karanA"
;Hari was batting when the game had to be abondened because of teh rain.
;

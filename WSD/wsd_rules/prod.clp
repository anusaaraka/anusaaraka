
(defrule prod0
(declare (salience 5000))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id prodding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ukasAne_kI_prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prod.clp  	prod0   "  ?id "  ukasAne_kI_prakriyA )" crlf))
)

;"prodding","N","1.ukasAne kI prakriyA"
;He needed some prodding because he is a stubborn man.
;
(defrule prod1
(declare (salience 4900))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuBana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prod.clp 	prod1   "  ?id "  cuBana )" crlf))
)

;"prod","N","1.cuBana"
;He gave me a terrible prod by this nail.
;--"2.koMca"
;Give him a humble prod to attend the seminar.
;
(defrule prod2
(declare (salience 4800))
(id-root ?id prod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prod.clp 	prod2   "  ?id "  cuBA )" crlf))
)

;"prod","V","1.cuBAnA"
;She prodded me with the tip of a blund knife.
;--"2.kIMcanA"
;He prodded me to join his gang.
;

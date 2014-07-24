
(defrule slice0
(declare (salience 5000))
(id-root ?id slice)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 bread)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slice.clp 	slice0   "  ?id "  kAta )" crlf))
)
;@@@ Added by jagriti(3.4.2014)
;I got a big slice of profit.[rajpal]
;मैंने लाभ का एक बडा हिस्सा प्राप्त किया . 
(defrule slice2
(declare (salience 4900))
(id-root ?id slice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 property|territory|profit|market)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hissA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slice.clp 	slice2   "  ?id "  hissA )" crlf))
)
;$$$ Modified by jagriti(3.4.2014)...tukadZA instead of kawalA
;I got two slices of bread.[rajpal]
;मैंने ब्रेड के दो टुकडे प्राप्त किए . 
(defrule slice1
(declare (salience 100))
(id-root ?id slice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slice.clp 	slice1   "  ?id "  tukadZA )" crlf))
)

;"slice","N","1.kawalA"
;He asked his mother to give him two slices of bread.


;@@@ Added by jagriti(3.4.2014)
;He slice the fruit.[rajpal]
;वह फल काटता है . 
(defrule slice3
(declare (salience 100))
(id-root ?id slice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slice.clp 	slice3   "  ?id "  kAta )" crlf))
)

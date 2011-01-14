
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

(defrule slice1
(declare (salience 4900))
(id-root ?id slice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kawalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slice.clp 	slice1   "  ?id "  kawalA )" crlf))
)

;"slice","N","1.kawalA"
;He asked his mother to give him two slices of bread.
;
;

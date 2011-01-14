
(defrule roar0
(declare (salience 5000))
(id-root ?id roar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xahAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roar.clp 	roar0   "  ?id "  xahAdZa )" crlf))
)

;"roar","N","1.xahAdZa"
;The roar of the traffic was unbearable.
;
(defrule roar1
(declare (salience 4900))
(id-root ?id roar)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 thunder)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roar.clp 	roar1   "  ?id "  kadaka )" crlf))
)

(defrule roar2
(declare (salience 4800))
(id-root ?id roar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xahAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roar.clp 	roar2   "  ?id "  xahAdZa )" crlf))
)

;"roar","VI","1.xahAdZanA"
;Tigers are roaring in their cages.
;How dare you speak to me like that,she roared.
;--"2.ga<F6>dZagadZAnA"
;His motorbike roared up the hill.
;

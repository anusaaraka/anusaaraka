
(defrule mate0
(declare (salience 5000))
(id-root ?id mate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id subaha_kI_prArWanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mate.clp  	mate0   "  ?id "  subaha_kI_prArWanA )" crlf))
)

;"mating","N","1.subaha kI prArWanA"
;My friend Rosy attends matins every saturday.
;
(defrule mate1
(declare (salience 4900))
(id-root ?id mate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mate.clp 	mate1   "  ?id "  sAWI )" crlf))
)

;"mate","N","1.sAWI"
;He's off for a drink with his mates.
;--"2.jodZa"
;The bird seems to have lost his mate.
;
;
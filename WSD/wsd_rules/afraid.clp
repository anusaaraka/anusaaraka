;"that" was removed from the list by Meena(7.11.09)
;I am afraid for my children.
(defrule afraid1
(declare (salience 5000))
(id-root ?id afraid)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) for)
;(id-root =(+ ?id 1) for|that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwiwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afraid.clp       afraid1  "  ?id "  cinwiwa  )" crlf))
)




;I have always been afraid of flying .
(defrule afraid2
(declare (salience 4900))
(id-root ?id afraid)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) of|to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  BayaBIwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afraid.clp      afraid2  "  ?id "   BayaBIwa )" crlf))
)




;Changed the meaning from "Kexa" to "cinwiwa"(Meena 6.3.10)
;Added by Meena(7.11.09)
;I am afraid you have completely misunderstood the question .
(defrule afraid3
(declare (salience 4800))
(id-root ?id afraid)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  =(- ?id 2) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwiwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afraid.clp       afraid3  "  ?id "  cinwiwa  )" crlf))
)


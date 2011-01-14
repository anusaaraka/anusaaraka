;Added by Meena(10.4.10)
;Amanuensis is a person whose job is to write down what another person says or to copy what another person has written.
(defrule amanuensis1
(declare (salience 2200))
(id-root ?id amanuensis|Amanuensis)
?mng <-(meaning_to_be_decided ?id)
(or(subject-subject_samAnAXikaraNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SruwileKaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amanuensis.clp      amanuensis1   "  ?id "   SruwileKaka )" crlf))
)



;@@@ Added by Preeti(21-12-13)
;Massachusetts was one of the original 13 British colonies that later became the United States. [merriam-webste]
;mesAcusetsa una prAramBika 13 britena ke upaniveSoM meM se eka WA jo bAxa meM saMyukwa rARtra banA.
(defrule colony1
(declare (salience 1050))
(id-root ?id colony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1  british|french)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaniveSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  colony.clp 	colony1   "  ?id "  upaniveSa )" crlf))
)


;#############################Defaults rule#######################################
;@@@ Added by Preeti(21-12-13)
;That first winter in America was very hard for the new colony. [merriam-webste]
;amarIkA meM vaha praWama jAdA nayI baswI ke liye awyanwa kaTina WA.
(defrule colony0
(declare (salience 1000))
(id-root ?id colony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baswI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  colony.clp 	colony0   "  ?id "  baswI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_colony1
(declare (salience 1050))
(id-root ?id colony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1  british|french)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaniveSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " colony.clp   sub_samA_colony1   "   ?id " upaniveSa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_colony1
(declare (salience 1050))
(id-root ?id colony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1  british|french)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaniveSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " colony.clp   obj_samA_colony1   "   ?id " upaniveSa )" crlf))
)

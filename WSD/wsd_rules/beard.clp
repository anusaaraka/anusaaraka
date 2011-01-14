
(defrule beard0
(declare (salience 5000))
(id-root ?id beard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xADZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beard.clp 	beard0   "  ?id "  xADZI )" crlf))
)

;"beard","N","1.xADZI"
;My father has a long beard.
;mere piwA kI lambI dADZI hE.
;
(defrule beard1
(declare (salience 4900))
(id-root ?id beard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lalakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beard.clp 	beard1   "  ?id "  lalakAra )" crlf))
)

;"beard","V","1.lalakAranA"
;He was brave enough to beard his senior on this issue.
;vaha iwanA bahAxura WA ki apane variRTa (aXikArI) ko isa viRaya para lalakAra sakA.
;

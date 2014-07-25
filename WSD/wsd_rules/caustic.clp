
(defrule caustic0
;(declare (salience 5000));salience changed
(id-root ?id caustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caustic.clp 	caustic0   "  ?id "  kRAraka )" crlf))
)

;@@@ Added by Preeti(15-4-14)
;Her speech was a caustic attack on government officials. [Oxford Advanced Learner's Dictionary]
;usakA BASaNa sarakArI aXikAriyoM para eka katu hamalA WA.
(defrule caustic2
(declare (salience 4900))
(id-root ?id caustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1  ?id)
(id-root ?id1 humor|wit|attack|sense|remark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  caustic.clp 	caustic2   "  ?id "  katu )" crlf))
)

;caustic0 & caustic1 repeated so caustic1 removed

;"caustic","Adj","1.kRAraka/xAhaka"
;Soda can be caustic.
;--"2.kaTora"
;He made some caustic remarks at her in the party.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_caustic2
(declare (salience 4900))
(id-root ?id caustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 humor|wit|attack|sense|remark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " caustic.clp   sub_samA_caustic2   "   ?id " katu )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_caustic2
(declare (salience 4900))
(id-root ?id caustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 humor|wit|attack|sense|remark)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " caustic.clp   obj_samA_caustic2   "   ?id " katu )" crlf))
)

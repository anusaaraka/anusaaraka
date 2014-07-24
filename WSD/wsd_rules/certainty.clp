;@@@ Added by Preeti(15-1-14)
;Her return to the team now seems a certainty. [Oxford Advanced Learner's Dictionary]
;tIma meM usakI vApasI aba niSciwa prawIwa howI hE.
(defrule certainty1
(declare (salience 5050))
(id-root ?id certainty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-det_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id1 determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certainty.clp 	certainty1   "  ?id "  niSciwa )" crlf))
)
;#############################Defaults rule#######################################
;@@@ Added by Preeti(15-1-14)
;I can not say with any certainty where I will be next week. [Oxford Advanced Learner's Dictionary]
;mEM niSciwawA ke sAWa nahIM_kaha sakawA hUz ki  mEM agalA sapwAha kahAz hoUzgA.
(defrule certainty0
(declare (salience 5000))
(id-root ?id certainty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certainty.clp 	certainty0   "  ?id "  niSciwawA )" crlf))
)

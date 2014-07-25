;@@@ Added by Preeti(16-12-13)
;Losing his job was a severe blow to his confidence.[By mail]
;usakI nOkarI jAnA usake AwmaviSvAsa ko eka BArI XakkA WA.
(defrule confidence1
(declare (salience 1050))
(id-root ?id confidence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmaviSvAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confidence.clp 	confidence1   "  ?id "  AwmaviSvAsa )" crlf))
)


;#############################Defaults rule#######################################
;@@@ Added by Preeti(16-12-13)
;She has every confidence in her students' abilities. [ Oxford Advanced Learner's Dictionary]
;use apane vixyArWiyoM kI yogyawA para pUrA BarosA hE.
(defrule confidence0
(declare (salience 1000))
(id-root ?id confidence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarosA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confidence.clp 	confidence0   "  ?id "  BarosA )" crlf))
)

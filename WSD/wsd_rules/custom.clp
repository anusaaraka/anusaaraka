;@@@ Added by Preeti(17-2-14)
;It was her custom to rise early.[Oxford Advanced Learner's Dictionary]
;jalxI uTanA usakI Axawa WI.
(defrule custom1
(declare (salience 1000))
(id-root ?id custom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(id-root ?id1 his|her)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  custom.clp 	custom1   "  ?id "  Axawa )" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(17-2-14)
;It is a local custom. [Oxford Advanced Learner's Dictionary]
;yaha eka sWAnIya rivAja hE.
(defrule custom0
(id-root ?id custom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rivAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  custom.clp 	custom0   "  ?id "  rivAja )" crlf))
)

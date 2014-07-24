
(defrule careful0
(declare (salience 1000))
(id-root ?id careful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAvaXAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careful.clp 	careful0   "  ?id "  sAvaXAna )" crlf))
)

(defrule careful1
(declare (salience 900))
(id-root ?id careful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careful.clp 	careful1   "  ?id "  cOkasa )" crlf))
)

;"careful","Adj","1.cOkasa/sAvaXAna"
;They were careful when crossing the busy street
;
;

;@@@ Added by Preeti(26-12-13)
;After careful consideration we have decided to offer you the job. 
;KUba soca vicAra ke bAxa hamane Apako nOkarI  xene kA nirNaya lIyA hE.
(defrule careful2
(declare (salience 1050))
(id-root ?id careful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 consideration)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  careful.clp 	careful2   "  ?id "  KUba )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_careful2
(declare (salience 1050))
(id-root ?id careful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 consideration)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " careful.clp   sub_samA_careful2   "   ?id " KUba )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_careful2
(declare (salience 1050))
(id-root ?id careful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 consideration)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " careful.clp   obj_samA_careful2   "   ?id " KUba )" crlf))
)

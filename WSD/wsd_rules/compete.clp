;@@@ Added by Preeti(15-1-14)
;Young children will usually compete for their mother's attention. [Oxford Advanced Learner's Dictionary]
;yuvA bacce unakI mAz kA XyAna pAne ke liye Ama wOra para prayawna kareMge.
(defrule compete1
(declare (salience 1500))
(id-root ?id compete)
?mng <-(meaning_to_be_decided  ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?id1)
(id-word ?id1 attention)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayawna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compete.clp	compete1  "  ?id "  prayawna_kara )" crlf))
)

;@@@ Added by Preeti(15-1-14)
;He is hoping to compete in the London marathon. [Oxford Advanced Learner's Dictionary]
;vaha lanxana lambI xOda kI prawiyogiwA_meM_BAga lene kI soca rahA hE.
(defrule compete2
(declare (salience 1500))
(id-root ?id compete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 metre|marathon )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiyogiwA_meM_BAga_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compete.clp	compete2  "  ?id "  prawiyogiwA_meM_BAga_le )" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(15-1-14)
;It is difficult for a small shop to compete with the big supermarkets. [Oxford Advanced Learner's Dictionary]
;eka CotI xukAna ke liye bade supara bAjAroM ke sAWa mukAbalA karanA muSkila hE
(defrule compete0
(declare (salience 1000))
(id-root ?id compete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukAbalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compete.clp	compete0  "  ?id "  mukAbalA_kara )" crlf))
)

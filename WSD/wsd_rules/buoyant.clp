
;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;They were all in buoyant mood.[oald]
;वह सब प्रफुल्लित मनोदशा में थे
;Buoyant spirits
(defrule buoyant1
(declare (salience 5000))
(id-root ?id buoyant)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 mood|spirit);added by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praPulliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoyant.clp 	buoyant1   "  ?id "  praPulliwa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;For example for a solid immersed in a fluid there is an upward bouyant force equal to the weight of the fluid displaced.[oald]
;उदाहरण के लिए, जब किसी ठोस को किसी तरल में डुबाते हैं, तो एक उपरिमुखी बल (उत्प्लावन बल) होता है जो उस ठोस द्वारा विस्थापित तरल के भार के बराबर होता है.
(defrule buoyant2
(declare (salience 5000))
(id-root ?id buoyant)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-root ?id1 force)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwplAvana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoyant.clp 	buoyant2   "  ?id "  uwplAvana )" crlf))
)


;****************************DEFAULT RULES*********************************

(defrule buoyant0
(declare (salience 0))
(id-root ?id buoyant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlyoM_kA_baDZAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoyant.clp 	buoyant0   "  ?id "  mUlyoM_kA_baDZAva )" crlf))
)


;--"2.wErawA_huA/bahawA_huA"
;Buoyant balloons
;
;"buoyant","Adj","1.praPulliwa"


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_buoyant1
(declare (salience 5000))
(id-root ?id buoyant)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mood|spirit);added by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praPulliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " buoyant.clp   sub_samA_buoyant1   "   ?id " praPulliwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_buoyant1
(declare (salience 5000))
(id-root ?id buoyant)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mood|spirit);added by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praPulliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " buoyant.clp   obj_samA_buoyant1   "   ?id " praPulliwa )" crlf))
)

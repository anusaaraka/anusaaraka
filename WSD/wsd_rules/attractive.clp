
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;Gravity is always attractive while electromagnetic force can be attractive or repulsive.[ncrt]
;गुरुत्वाकर्षण हमेशा आकर्षी बल होता है जब कि वैद्युतचुम्बकीय बल आकर्षी अथवा प्रतिकर्षी भी हो सकता है 
(defrule attractive2
(declare (salience 3000))
(id-root ?id attractive)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 gravity|force)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRI_bala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attractive.clp 	attractive2   "  ?id "  AkarRI_bala )" crlf))
)


;***********************DEFAULT RULES******************************

;commented by Garima Singh as attractive0 and attractive1 are same
;(defrule attractive0
;(declare (salience 0))
;(id-root ?id attractive)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id mohaka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attractive.clp 	attractive0   "  ?id "  mohaka )" crlf))
;)

(defrule attractive1
(declare (salience 0))
(id-root ?id attractive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attractive.clp 	attractive1   "  ?id "  AkarRaka )" crlf))
)

;"attractive","Adj","1.AkarRaka"
;She has an attractive personality.
;
;

;@@@ Added by Pramila(BU) on 22-03-2014
;She looks worn after the day's work.   [old clp]
;वह दिन के काम के बाद थकी हुई लगती है.
;The worn travellers sat down under tree. [shiksharthi]
;थके हुए यात्री पेड़ के नीचे बैठ गए.
(defrule worn0
(declare (salience 5000))
(id-root ?id worn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worn.clp 	worn0   "  ?id "  WakA_huA )" crlf))
)

(defrule worn1
(declare (salience 100))
(id-root ?id worn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GisA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worn.clp 	worn1   "  ?id "  GisA_huA )" crlf))
)

;"worn","Adj","1.GisA_huA"
;His shoes are worn.
;--"2.WakA_huA"
;She looks worn after the day's work.
;
;



;-----------removed duplicate rule-----
;meaning in adjective sense 'GisA_huA ' 

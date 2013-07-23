
;Added by human
(defrule foundation0
(declare (salience 5000))
(id-root ?id foundation)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 glorious)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIMva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foundation.clp 	foundation0   "  ?id "  nIMva )" crlf))
)

(defrule foundation1
(declare (salience 4900))
(id-root ?id foundation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla_vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foundation.clp 	foundation1   "  ?id "  mUla_vicAra )" crlf))
)

;Added by Roja. Suggested by Sarita ji (LTRC) (15-07-13)
;The foundations of the house are being laid today.
(defrule foundation2
(declare (salience 4950))
(id-root ?id foundation)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 house|plot|factory)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIMva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*prov_dir* "  foundation.clp       foundation2   "  ?id "  nIMva )" crlf))
)

;default_sense && category=noun	AXAra	0
;"foundation","N","1.AXAra"
;The foundation of the building was layed way back in 1997.
;--"2.sWApanA
;The foundation of a library in the town helpe dmany a students.
;--"3.saMsWA
;To get financial support for your research you can apply to various 
;research foundations.
;
;

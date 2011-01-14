
(defrule treatment0
(declare (salience 5000))
(id-root ?id treatment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ilAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treatment.clp 	treatment0   "  ?id "  ilAja )" crlf))
)

(defrule treatment1
(declare (salience 4900))
(id-root ?id treatment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  treatment.clp 	treatment1   "  ?id "  vyavahAra )" crlf))
)

;default_sense && category=noun	barwAva	0
;"treatment","N","1.barwAva"
;His treatment towards the guests was not cordeal.
;--"2.upacAra"
;Trace is undergoing medical treatment.
;--"3.nirUpaNa"
;Kalidasa's treatment of love in Meghasandesha is very vivid.
;
;

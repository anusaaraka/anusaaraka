;@@@ Added by Nandini (28-11-13)
;Making wsd rules is a laborious task.
(defrule laborious2
(declare (salience 100))
(id-root ?id laborious)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 task)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SramasAXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laborious.clp 	laborious2   "  ?id "  SramasAXya )" crlf))
)

;Modified by Nandini(26-11-13)
;Following rules are added by human being.
;He is a laborious man.
(defrule laborious1
(declare (salience 100))
(id-root ?id laborious)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 man)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSramI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laborious.clp 	laborious1   "  ?id "  pariSramI )" crlf))
)
;===========Default-Rule============================
;Translation Added by Nandini (26-11-13)
;"laborious","Adj","1.kaTina/SramasAXya"
;Construction of building is quite a labourious job.
;imArawa kA nirmANa sacamuca eka kaTina kAma hE.
(defrule laborious0
(declare (salience 50))
(id-root ?id laborious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laborious.clp 	laborious0   "  ?id "  kaTina )" crlf))
)

;=======Additioal-sentenses==========
;Laborious work is very difficult and needs a lot of effort.
;Construction of building is quite a laborious job.
;--"2.pariSramI"
;She has got a laborious style of dancing.
;Checking all the information will be slow and laborious.



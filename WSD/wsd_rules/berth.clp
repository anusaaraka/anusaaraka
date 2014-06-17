
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18/03/2014
;Berth for ships.[shiksharthi kosh]
;जहाज़ों की लंगरगाह
(defrule berth2
(declare (salience 3000))
(id-root ?id berth)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI ?id ?id1)
(id-root ?id1 ship)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMgaragAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  berth.clp 	berth2   "  ?id "  laMgaragAha )" crlf))
)

;*******************DEFAULT RULES*************************

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18/03/2014
;changed the meaning from 'barWa' to 'sIta'
;A cabin with three berths.[oald]
;तीन सीट वाला एक कमरा
(defrule berth0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id berth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  berth.clp 	berth0   "  ?id "  sIta )" crlf))
)


;"berth","N","1.barWa/SAyikA"
;I got a berth on the middle deck.
;
(defrule berth1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id berth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  berth.clp 	berth1   "  ?id "  jagaha_xe )" crlf))
)

;"berth","VT","1.jagaha_xenA"
;I was berthed on the middle deck.
;

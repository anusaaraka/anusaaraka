
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;Budge up a bit![oald]
;थोडा सा सरक जाईये
(defrule budge2
(declare (salience 5000))
(id-root ?id budge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(AjFArWaka_vAkya)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saraka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " budge.clp	budge2  "  ?id "  " ?id1 " saraka_jA )" crlf))
)

;*******************************DEFAULT RULES**************************************************

(defrule budge0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id budge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  budge.clp 	budge0   "  ?id "  hila )" crlf))
)

;"budge","VI","1.hilanA/hatanA"
;He did not budge from his point of view.
;

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;I heaved with all my might but still couldn't budge it.[oald]
;मैंने पूरे बल के साथ जोर लगाकर उठाया परन्तु उसे हिला नहीं सका . 
(defrule budge1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id budge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  budge.clp 	budge1   "  ?id "  hilA )" crlf))
)

;"budge","VT","1.hilAnA/hatAnA/hatanA/hilanA"
;The mule stopped in the middle of the road && refused to budge.
;--"2.hilAnA/hatAnA"
;

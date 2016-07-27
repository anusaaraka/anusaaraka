
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-Feb-2014
;Buoyed by their win yesterday the team feel confident of further success.[oald]
(defrule buoy2
(declare (salience 5000))
(id-root ?id buoy)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-word ?id1 win)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsAhiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoy.clp 	buoy2   "  ?id "  uwsAhiwa )" crlf))
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-Feb-2014
;Knowing that all her friends were there buoyed up her spirits.[oald]
;उसके सब मित्र वहाँ पर हैं इस बात ने उसके उत्साह को बढ़ा दिया . 
(defrule buoy3
(declare (salience 5000))
(id-root ?id buoy)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?obj)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buoy.clp	  buoy3  "  ?id "  " ?id1 "  baDZA_xe )" crlf))
)



;*********************************DEFAULT RULES***************************

(defrule buoy0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warerI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoy.clp 	buoy0   "  ?id "  warerI )" crlf))
)

;"buoy","N","1.warerI{pAnI_para_wEranevAlA_cihna}"
;The life guard threw a life buoy at the drowning lady.
;
(defrule buoy1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wErawA_huA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoy.clp 	buoy1   "  ?id "  wErawA_huA_raKa )" crlf))
)

;"buoy","VT","1.wErawA_huA_raKanA"
;The life vest buoyed him up
;

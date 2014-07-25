
;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)19-Feb-2014
;removed '(id-word ?id1 with) , (kriyA-upasarga ?id ?id1) and (kriyA-object ?id ?)' relation and added '(kriyA-with_saMbanXI  ?id ?id1)' relation
;The whole subject bristles with problems.[oald]
;पूरा विषय समस्याओं से भरा हुआ है . 
;The newspapers bristled with tributes to the general.[oald]
;समाचारपत्र सेनाध्यक्ष को श्रद्धाञ्जलियों से साथ भरा हुआ . 
(defrule bristle0
(declare (salience 5000))
(id-root ?id bristle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bristle.clp 	bristle0   "  ?id "  BarA_huA  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)19-Feb-2014
;His lies made her bristle with rage.[oald]
;उसके झूठ ने उसे रोष से भर दिया
(defrule bristle3
(declare (salience 5000))
(id-root ?id bristle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-preraka_kriyA  ?id ?id1)
(kriyA-prayojya_karwA  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bristle.clp 	bristle3   "  ?id "  Bara_xe  )" crlf))
)


;*********************************DEFAULT RULES*****************************



;The city was bristling with the foreigners.
;Sahara vixeSiyoM se BarA huA WA
(defrule bristle1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bristle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUara_kA_bAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bristle.clp 	bristle1   "  ?id "  sUara_kA_bAla )" crlf))
)

;"bristle","N","1.sUara_kA_bAla"
;The brush has neat bristles.
;
(defrule bristle2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bristle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA_KadZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bristle.clp 	bristle2   "  ?id "  sIXA_KadZA_ho )" crlf))
)

;"bristle","VT","1.sIXA_KadZA_honA"
;Bristle yourself to hear the news.
;

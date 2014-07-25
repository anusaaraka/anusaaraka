
(defrule trump0
(declare (salience 5000))
(id-root ?id trump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wurupa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trump.clp 	trump0   "  ?id "  wurupa )" crlf))
)

;"trump","N","1.wurupa"
;He declared hearts as the trump for that game.
;
(defrule trump1
(declare (salience 4900))
(id-root ?id trump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wurupa_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trump.clp 	trump1   "  ?id "  wurupa_cala )" crlf))
)

;"trump","VTI","1.wurupa_calanA"
;She teumped my Ace.
;

;@@@ Added by Prachi Rathore[21-2-14]
;She trumped up some excuse to fire him.[m-w]
;उसने उसको बाहर निकालने के लिये कुछ  मनघडंत बहाने जुटाया . 
(defrule trump2
(declare (salience 5000))
(id-root ?id trump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jutA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trump.clp 	trump2    "  ?id "  " ?id1 " jutA )" crlf))
)


;@@@ Added by Prachi Rathore[21-2-14]
; They were trumped by another firm that made a lower bid.[oald]
;वे एक अन्य व्यापारिक कम्पनी से पिछड गये थे जिसने  नीलाम की कम बोली लगायी . 
(defrule trump3
(declare (salience 5000))
(id-root ?id trump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCada_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trump.clp 	trump3   "  ?id "  piCada_jA )" crlf))
)

;@@@ Added by Prachi Rathore[21-2-14]
;She was arrested on a trumped up charge.[oald]
;वह एक झुटे आरोप में पकडी गयी थी . 
(defrule trump4
(declare (salience 5000))
(id-root ?id trump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id1)
(id-root ?id1 charge)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Juta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trump.clp 	trump4    "  ?id "  " ?id1 " Juta )" crlf))
)

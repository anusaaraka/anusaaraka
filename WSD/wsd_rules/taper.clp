;@@@ Added by Prachi Rathore[1-2-14]
;They are gradually tapering off production of the older models.[oald]
;वे धीरे धीरे  अधिक पुराने नमूने ( माडेल ) का उत्पादन कम कर रहे हैं . 
(defrule taper2
(declare (salience 5100))
(id-root ?id taper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " taper.clp 	taper2  "  ?id "  " ?id1 "  kama_kara )" crlf))
)

;@@@ Added by Prachi Rathore[1-2-14]
;The number of applicants for teaching posts has tapered off.[oald]
;शिक्षण पदों के लिये प्रार्थियों की संख्या कम हुयी है . 
(defrule taper3
(declare (salience 5000))
(id-root ?id taper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(not (kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " taper.clp 	taper3  "  ?id "  " ?id1 "  kama_ho )" crlf))
)

;xxxxxxxxxxxxxxxxxxxx default rule xxxxxxxxxxxxxxxxxxx
(defrule taper0
(declare (salience 5000))
(id-root ?id taper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalI_momabawwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taper.clp 	taper0   "  ?id "  pawalI_momabawwI )" crlf))
)

;"taper","N","1.pawalI_momabawwI"
;He lighted a taper when there was no light.
;
(defrule taper1
(declare (salience 4900))
(id-root ?id taper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taper.clp 	taper1   "  ?id "  waMga_ho )" crlf))
)

;"taper","VI","1.waMga_honA"
;The road tapers at the end.
;

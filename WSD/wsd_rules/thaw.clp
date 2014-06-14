;@@@ Added by Prachi Rathore[7-2-14]
;The country was slowly thawing out after the long cold winter.[oald]
;देश एक लंबे ठण्डे जाडे के बाद धीरे धीरे गर्म हो रहा था . 
(defrule thaw2
(declare (salience 5000))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "   thaw.clp 	thaw2  "  ?id "  " ?id1 "  garma_ho  )" crlf))
)

;@@@ Added by Prachi Rathore[7-2-14]
;Relations between the two countries thawed a little after the talks.[oald]
;दो देशों के बीच सम्बन्ध बातचीत के बाद थोडे सामान्य हुए . 
(defrule thaw3
(declare (salience 5000))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 relation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thaw.clp 	thaw3   "  ?id "  sAmAnya_ho )" crlf))
)


;@@@ Added by Prachi Rathore[7-2-14]
;The atmosphere slowly began to thaw.[oald]
;वातावरण  धीरे धीरे सामान्य होना शुरु किया . 
(defrule thaw4
(declare (salience 5000))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id1 ?)
(kriyA-to_saMbanXI  ?id1 ?id)
(id-root ?id1 relation|atmosphere)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thaw.clp 	thaw4   "  ?id "  sAmAnya_ho )" crlf))
)

;@@@ Added by Prachi Rathore[7-2-14]
;There are signs of a thaw in relations between the two countries.[cambridge]
;दो देशों के बीच सम्बन्ध में मैत्री के चिह्न हैं . 
(defrule thaw5
(declare (salience 5500))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 relation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEwrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thaw.clp 	thaw5   "  ?id "  mEwrI )" crlf))
)
;xxxxxxxxxxxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
(defrule thaw0
(declare (salience 5000))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thaw.clp 	thaw0   "  ?id "  galana )" crlf))
)

;"thaw","N","1.galana"
;The sudden thaw resulted in flooding.
;
(defrule thaw1
(declare (salience 4900))
(id-root ?id thaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thaw.clp 	thaw1   "  ?id "  gala )" crlf))
)

;"thaw","VTI","1.galanA"
;The ice which was removed from the freezer began to thaw.
;--"2.DIlA_padanA[vyavahAra]"
;A gradual thaw in relations with the enemy nation in the recent summit was a step forward.
;

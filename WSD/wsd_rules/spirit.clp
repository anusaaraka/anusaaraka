;@@@ Added by jagriti(2.1.2014)
;He is dead, but his spirit lives on.[oald]
;वह मर चुका है, लेकिन उसकी आत्मा जिंदा है.
(defrule spirit00
(declare (salience 5100))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 live)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit00  "  ?id "  AwmA )" crlf))
)
;@@@ Added by jagriti(2.1.2014)
;It was believed that people could be possessed by evil spirits.[oald]
;यह कि माना जाता था कि लोगों पर बुरी आत्माओं का साया हो सकता है .
(defrule spirit0
(declare (salience 5000))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 evil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit0  "  ?id "  AwmA )" crlf))
)
;@@@ Added by jagriti(2.1.2014)
;I don't drink whisky or brandy or any other spirits.[oald]
;मैं व्हिस्की या ब्रांडी या कोई भी अन्य शराब नहीं पीता.
(defrule spirit1
(declare (salience 4900))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id2)
(conjunction-components  ?id2 $? ?id $?)
(id-root ?id1 drink)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit1   "  ?id "  SarAba )" crlf))
)
;@@@ Added by jagriti(2.1.2014)
;Vodka is a type of spirit.[cambridge dict]
;वोदका शराब का एक प्रकार है.
(defrule spirit2
(declare (salience 4800))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(viSeRya-of_saMbanXI ?id2 ?id)
(id-root ?id1 vodka|bear|whisky|brandy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit2   "  ?id "  SarAba )" crlf))
)
;@@@ Added by jagriti(2.1.2014)
; Spirits are more expensive than beer.
;शराब बियर की तुलना में अधिक महंगी हैं.
(defrule spirit3
(declare (salience 4700))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(more_upameya-than_upamAna  ?id1 ?id2)
(id-root ?id2 vodka|beer|whisky|brandy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit3   "  ?id "  SarAba )" crlf))
)

;.....Default rule........
;$$$ Modified by jagriti(2.1.014)...default meaning uwsAha instead of AwmA
;Our team played with great spirit .
;हमारी टीम ने बहुत उत्साह के साथ खेला.
(defrule spirit4
(declare (salience 1))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit4   "  ?id "  uwsAha )" crlf))
)

(defrule spirit5
(declare (salience 4900))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id udZA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spirit.clp 	spirit5   "  ?id "  udZA_le_jA )" crlf))
)

;"spirit","V","1.udZA le jAnA"
;The wind spirited off his papers.
;--"2.uwsAha baDZAnA"  
;The crowd spirited the Indian team.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_spirit0
(declare (salience 5000))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 evil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spirit.clp   sub_samA_spirit0   "   ?id " AwmA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_spirit0
(declare (salience 5000))
(id-root ?id spirit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 evil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spirit.clp   obj_samA_spirit0   "   ?id " AwmA )" crlf))
)

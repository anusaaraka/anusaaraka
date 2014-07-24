
(defrule itch0
(declare (salience 5000))
(id-root ?id itch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwkata_lAlasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  itch.clp 	itch0   "  ?id "  uwkata_lAlasA )" crlf))
)

(defrule itch1
(declare (salience 4900))
(id-root ?id itch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIvra_icCA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  itch.clp 	itch1   "  ?id "  wIvra_icCA_ho )" crlf))
)

;default_sense && category=verb	KujalI_ho	0
;"itch","VI","1.KujalI_honA"
;My nose is itching.
;--"2.icCA_honA"
;Student's itching for the lesson to finish.
;
;


;@@@ Added by Prachi Rathore[8-3-14]
;My nose is itching.[m-w]
;मेरी नाक मे खुजली हो रही है . 
(defrule itch2
(declare (salience 5000))
(id-root ?id itch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 nose|rash|back)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KujalI_ho))
(assert (kriyA_id-subject_viBakwi ?id me))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  itch.clp 	itch2   "  ?id " KujalI_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  itch.clp 	itch2    "  ?id "  me )" crlf))
)


;@@@ Added by Prachi Rathore[8-3-14]
;This sweater really itches.[oald]
;यह स्वेटर वास्तव में चुभता है . 
(defrule itch3
(declare (salience 5000))
(id-root ?id itch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 sweater|dress|cloth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  itch.clp 	itch3   "  ?id " cuBa )" crlf)
)
)


;@@@ Added by Prachi Rathore[8-3-14]
;I had a slight itch on my back. [m-w]
; मेरी पीठ पर एक थोडी खुजली हुई . 
(defrule itch4
(declare (salience 5050))
(id-root ?id itch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-root ?id1 nose|rash|back)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KujalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  itch.clp 	itch4   "  ?id "  KujalI)" crlf))
)

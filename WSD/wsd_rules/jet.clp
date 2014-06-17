;@@@ Added by Prachi Rathore[10-2-14]
;The pipe burst and jets of water shot across the room.[oald]
;पाइप फट गयाऔर पानी की धाराएँ कमरे में हर तरफ फैल गयी
(defrule jet2
(declare (salience 5500))
(id-root ?id jet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 water|liquid|blood)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jet.clp 	jet2   "  ?id "  XArA )" crlf))
)

;@@@ Added by Prachi Rathore[10-2-14]
; I'm jetting off to New Zealand next week.[cambridge]
;मैं न्यूजीलैंड को अगला सप्ताह जेट विमान से निकल रहा हूँ . 
(defrule jet3
(declare (salience 5500))
(id-root ?id jet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jeta_vimAna_se_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jet.clp 	jet3  "  ?id "  " ?id1 "  jeta_vimAna_se_nikala )" crlf))
)

; xxxxxxxxxxx Default Rules xxxxxxxxxxxxxxxxxxxxxxx
(defrule jet0
(declare (salience 5000))
(id-root ?id jet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jeta_vimAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jet.clp 	jet0   "  ?id "  jeta_vimAna )" crlf))
)

;"jet","N","1.jeta_vimAna"
;He is undergoing training to fly jets.
;--"2.XArA"
;The pipe burst && jets of water shot across the room.
;
(defrule jet1
(declare (salience 4900))
(id-root ?id jet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jet.clp 	jet1   "  ?id "  nikala_padZa )" crlf))
)

;"jet","VI","1.nikala_padZanA"
;The pipe bursted && water jetted out .
;

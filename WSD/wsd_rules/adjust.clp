;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)17-dec-2013
;Watch out for sharp bends and adjust your speed accordingly.[oald]
;अचानक मोड़ का ध्यान रखिये और तदनुसार आपकी रफ्तार कम  ज्यादा कीजिए . 
;This button is for adjusting the volume.[oald]
(defrule adjust1
(declare (salience 4000));salience is kept more than rule 'adjust5'
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
(id-root ?obj volume|speed)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_jyAxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  adjust.clp       adjust1   "  ?id "  kama_jyAxA_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)17-dec-2013
;They'll be fine—they just need time to adjust.[oald]
;वह ठीक हो जायेंगे , उन्हें ठीक होने के लिये समय की जरूरत है 
(defrule adjust2
(declare (salience 3000))
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?kri ?id)
(to-infinitive  ? ?id)
(not(kriyA-to_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  adjust.clp       adjust2   "  ?id "  TIka_ho )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)17-dec-2013
;The brakes need to be adjusted.[oald]
;ब्रेक ठीक किए जाने हैं . 
(defrule adjust3
(declare (salience 4000))
(id-root ?id adjust)
(id-word ?id adjusted)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?kri ?id)
(to-infinitive  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  adjust.clp       adjust3   "  ?id "  TIka_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)17-dec-2013
;After a while his eyes adjusted to the dark.[oald]
;थोडे काल के बाद उसकी आँखों ने अंधेरा के अनुकूल हो . 
(defrule adjust4
(declare (salience 3000))
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
(not(to-infinitive ? ?id))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) ke_anukUla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " adjust.clp	adjust4  "  ?id "  " (+ ?id 1) "  ke_anukUla_ho  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)17-dec-2013
;He smoothed his hair and adjusted his tie.[oald]
;उसने बाल काढे और अपनी टाई को ठीक करा
(defrule adjust5
(declare (salience 3000))
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?obj ?)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) ko_TIka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " adjust.clp	adjust5  "  ?id "  " (+ ?id 1) "  ko_TIka_kara  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)17-dec-2013
;You'll quickly adjust yourself to student life.[oald]
;तुम जल्द ही विद्यार्थी जीवन में खुद को ढाल लोगे
(defrule adjust7
(declare (salience 4000))
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
(kriyA-object  ?id ?obj)
(id-word ?obj himself|yourself|myself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAla_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  adjust.clp       adjust7   "  ?id "  DAla_le )" crlf))
)


;Added by Meena(24.02.10)
;The camel can adjust its body temperature according to the external temperature.
(defrule adjust6
(declare (salience 0))
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id  ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatA_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  adjust.clp       adjust6   "  ?id "  GatA_baDZA )" crlf))
)

;****************DEFAULT RULES********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)17-dec-2013
(defrule adjust0
(declare (salience 0))
(id-root ?id adjust)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAyojana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  adjust.clp       adjust0   "  ?id "  samAyojana_kara )" crlf))
)


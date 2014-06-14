;__________________________________________________________________________
; @@@ Added by Krithika 6/2/2014
; Female lions do not have manes.
; mAxA siMhoM ke ayAla nahIM howe hEM.
(defrule female2
(declare (salience 5000))
(id-root ?id female)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id2 ?id)
(not(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  female.clp   female2   "  ?id "  mAxA )" crlf))
)
;____________________________________________________________________
; @@@ Added by Krithika 6/2/2014
; Translations by Mrs. Veena Bagga
;Females of birds produce eggs.
;मादा पक्षी ही अंडा देती है.
; The kitten was actually a female, not a male.

(defrule female3
(declare (salience 5000))
(id-root ?id female)
(or(viSeRya-of_saMbanXI  ?id ?id2) (subject-subject_samAnAXikaraNa  ?id2 ?id))
(not(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str))))
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  female.clp   female3   "  ?id "  mAxA )" crlf))
)
;______________________________ Default rules _________________________

; Added example sentences and translations by Krithika 6/2/2014
; Translations by Mrs. Veena Bagga
; She was voted the best female vocalist. 
; उसको सबसे अच्छी स्त्री गायिका के रूप में चुना गया .  
(defrule female0
(declare (salience 5000))
(id-root ?id female)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swrI)); modified swrI-  as swrI
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  female.clp 	female0   "  ?id "  swrI )" crlf))
)

;"female","Adj","1.swrI_sabaMXI"
;Female infacticide is a social evil.
;--"2.swrI"
;____________________________________________________________________
; Added example sentences and translations by Krithika 6/2/2014
; Translations by Mrs. Veena Bagga
;Modified by sheetal(04-03-10)
;My many female friends were angered by the hearings .
; मेरी कई महिला मित्र (कोर्ट) कि सुनवाई से नाराज हो गयी 
;She moves around only with her female friends.
; वह अपनी महिला मित्रों के साथ ही घूमती है .
(defrule female1
(declare (salience 4900))
(id-root ?id female)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swrI));meaning 'swrI_jAwi' is changed with 'swrI'.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  female.clp   female1   "  ?id "  swrI )" crlf))
)
;__________________________________________________________________________
;"female","N","1.swrI_jAwi"
;Females of birds produce eggs.
;__________________________________________________________________________
;################# To be handled###########################
;Female infanticide is a social evil.

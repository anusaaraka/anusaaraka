
(defrule whisper0
(declare (salience 100))
(id-root ?id whisper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAnA_PUsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whisper.clp 	whisper0   "  ?id "  kAnA_PUsI )" crlf))
)

;"whisper","N","1.kAnA_PUsI"
;The spy spoke in whispers.
;
(defrule whisper1
(declare (salience 100))
(id-root ?id whisper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUsaPUsA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whisper.clp 	whisper1   "  ?id "  PUsaPUsA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  whisper.clp   whisper1   "  ?id " se )" crlf)
)
)

;default_sense && category=verb	kAnA_PUsI_kara	0
;"whisper","VTI","1.kAnA_PUsI_karanA"
;The student whispered in the class.
;--"2.pawwiyoM_ke_takarAne_kI_AvAja"
;A gentle breeze was whispering through the woods.
;

;@@@ Added by Pramila(BU) on 14-03-2014
;I've heard whispers that he's leaving.   ;oald
;मैंने अफवाह सुनी है कि वह जा रहा है.
(defrule whisper2
(declare (salience 5000))
(id-root ?id whisper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-vAkyakarma  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aPavAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whisper.clp 	whisper2   "  ?id "  aPavAha )" crlf))
)

;@@@ Added by Pramila(BU) on 14-03-2014
;I could hear the whispering of the sea.   ;oald
;मैं समुद्र की सरसराहट सुन सकता था.
(defrule whisper3
(declare (salience 5000))
(id-word ?id whispering)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarasarAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whisper.clp 	whisper3   "  ?id "  sarasarAhata )" crlf))
)

;@@@ Added by Pramila(BU) on 14-03-2014
;It was whispered that he would soon die and he did.   ;oald
;यह अफवाह थी कि वह शीघ्र ही मर जाएगा और वह मर गया.
(defrule whisper4
(declare (salience 5000))
(id-word ?id whispered)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aPavAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  whisper.clp 	whisper4   "  ?id "  aPavAha )" crlf))
)

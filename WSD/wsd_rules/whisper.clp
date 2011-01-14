
(defrule whisper0
(declare (salience 5000))
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
(declare (salience 4900))
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

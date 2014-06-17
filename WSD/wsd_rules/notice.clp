
(defrule notice0
(declare (salience 5000))
(id-root ?id notice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sucanApawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  notice.clp 	notice0   "  ?id "  sucanApawra )" crlf))
)

;$$$ Added 'kriyA_id-object_viBakwi' by Roja (27-04-14). Suggested by Chaitanya Sir.
;Children should notice the traffic while crossing.
;sadZaka pAra karawe samaya baccoM ko trEPika para XyAna xenA cAhiye (Translation suggested by Chaitanya Sir)
(defrule notice1
(declare (salience 4900))
(id-root ?id notice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_xe))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  notice.clp 	notice1   "  ?id "  XyAna_xe )" crlf))
)

;"notice","VT","1.XyAna_xenA"
;Children should notice the traffic while crossing.
;--"2.vicAranA"
;The critics noticed the books && reviewed.
;
;LEVEL 
;Headword : notice
;
;Examples --
;
;"notice","N","1.sUcanA"
;He received a notice from his office about the meeting.
;mItiMga ke bAre meM use apane OYPisa se sUcanA milI.
;--"2.sUcanApawra{notisa}"
;There was a notice on the board informing about the meeting.
;mItiMga ke bAre meM sUcanA xene ke liye borda para eka notisa{sUcanA_pawra} lagA WA.
;--"3.XyAna"
;He did not take any notice of what the papers said.
;aKabAroM meM kyA liKA hE isa ora usane XyAna nahIM xiyA.
;--"4.samIkRA"
;The book received good notices.
;puswaka kI acCI samIkRAez huIM.
;
;"notice","VT","1.XyAna_xenA"
;Children should notice the traffic while crossing.
;sadZaka pAra karawe samaya baccoM ko trEPika para XyAna xenA cAhiye.
;--"2.vicAranA"
;The critics noticed the books && reviewed it.
;AlocakoM ne puswaka para vicAra kiyA Ora usakI samIkRA kI.
;
;ukwa uxAharaNoM meM 'notice' Sabxa ke muKyawaH xo arWa uBara kara Awe hEM,
;'XyAna' Ora 'sUcanA'. Ora inhIM xono se inake kriyA arWa BI banawe hEM.
;para 'XyAna' Ora 'sUcanA' BI paraspara sambanXiwa hEM. mUlawaH isakA arWa 
;'XyAna_AkarRiwa' karanA hE. eka bAra 'XyAna_AkarRiwa' ho jAwA hE wo
;usa ora XyAna BI jAwA hE Ora sUcanA BI mila jAwI hE. awaH isakA sUwra
;nimna hogA --
;
;sUwra : XyAna`[-AkarRaNa]_[xe]
; 
; 

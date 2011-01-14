

;Added by Meena(22.5.10)
; Ex: I know you hate Bill , but why did you send him that nasty note .
(defrule hate0
(declare (salience 5000))
(id-root ?id hate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id1 PropN)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApasanxa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hate.clp      hate0   "  ?id "  nApasanxa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hate.clp      hate0   "  ?id " ko )" crlf)
)
)



;Salience reduced by Meena(22.5.10)
;I hate her abominable behaviour. The 'ko' vibhakti is attached by some other rule to animates (Sukhada 19-4-10)
(defrule hate1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id hate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApasanxa_kara))
;(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hate.clp 	hate1   "  ?id "  nApasanxa_kara )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hate.clp      hate1   "  ?id " ko )" crlf)
)
)
;Modified by Shirisha Manju (asserted ko viBakwi)



(defrule hate2
(declare (salience 4900))
(id-root ?id hate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hate.clp 	hate2   "  ?id "  GqNA )" crlf))
)

;"hate","N","1.GqNA"
;rIweSa ke mana meM prIwi ke prawi bahuwa"hate"BAva WA.
;
;

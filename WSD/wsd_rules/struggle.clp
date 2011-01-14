
(defrule struggle0
(declare (salience 5000))
(id-root ?id struggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMGarRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  struggle.clp 	struggle0   "  ?id "  saMGarRa )" crlf))
)

;"struggle","N","1.saMGarRa"
;Launching of different product involves the struggle of different companies.
;--"2.prayawna"
;After a long struggle he cleared the exams.


;Added by Meena(13.10.09)
;It struggled to force its body through that little hole .
(defrule struggle1
(declare (salience 5000))
(id-root ?id struggle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMGarRa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  struggle.clp  struggle1   "  ?id "  saMGarRa_kara )" crlf))
)




(defrule struggle2
(declare (salience 4900))
(id-root ?id struggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgrAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  struggle.clp 	struggle2   "  ?id "  saMgrAma_kara )" crlf))
)

;"struggle","V","1.saMgrAma_karanA"
;Although he had almost no chance of survival after the accident but he struggled out of it.
;--"2.prayawna_karanA"
;Though the wind was blowing in the opposite direction the bowlers struggled to keep the length.
;--"3.hAWa-pEra_mAranA"
;An guy struggled to get away from the police.
;

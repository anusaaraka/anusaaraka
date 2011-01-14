;FILE MODIFIED ON 26.8.09(Meena)


;I badly need your help. 
(defrule badly0
(declare (salience 5000))
(id-root ?id badly)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 need|meet|miss|injure)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
;(id-word =(+ ?id 1) needed)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyanwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  badly.clp 	badly0   "  ?id "  awyanwa )" crlf))
)



;Modified by Meena ;replaced (id-cat_coarse ?id adverb) by (kriyA-kriyA_viSeRaNa  ?id1 ?id)
;I'm afraid that I've badly hurt him.
;Terrorists treat people very badly .
(defrule badly1
(declare (salience 4900))
(id-root ?id badly)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
;(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  badly.clp 	badly1   "  ?id "  burI_waraha_se )" crlf))
)





;Added by Meena(26.8.09)
;This sentence parses badly . 
(defrule badly2
(declare (salience 4900))
(id-root ?id badly)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 parse)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
;(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_KarAba ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  badly.clp    badly2   "  ?id "  bahuwa_KarAba )" crlf))
)


;"badly","Adv","1.burI_waraha_se"
;I'm afraid that I've badly hurt him.
;muJe dara hE ki mEMne usako burI waraha se Ahawa kiyA hE.
;Terrorists treat people very badly.
;AwaMkavAxI logoM ke sAWa nirxayawA se peSa Awe hEM.
;
;i

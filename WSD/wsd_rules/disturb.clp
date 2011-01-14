;Rule disturb0 added by meena to incoporate the meaning "pareSAna_kara"(3-08-09)
;I was disturbed by the news of her death.
;She was disturbed about the violence breaking out in the old city.
;The letter disturbed me . 
(defrule disturb0
(declare (salience 6000))
(id-root ?id disturb)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)                           ;added by Meena
(or(id-cat_coarse ?id2 pronoun)(kriyA-about_saMbanXI ?id ?id2)(kriyA-by_saMbanXI ?id ?id2)) ;added by Meena 
;(id-cat_coarse ?id verb)                          ;commented by Meena
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disturb.clp 	disturb0   "  ?id "  pareSAna_kara )" crlf))
)

;Rule disturb1 modified=>  added the relation kriyA-object instead of id-cat verb(Meena 03-08-09) to incoporate the meaning "CedZa"(3-08-09)
;Do not disturb the sleeping kids.
;Don't disturb the patient's wounds by moving him too rapidly!
;Don't disturb the clothes in my closet.
(defrule disturb1
(declare (salience 4800))
(id-root ?id disturb)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CedZa))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disturb.clp 	disturb1   "  ?id "  CedZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  disturb.clp   disturb1   "  ?id " ko )" crlf)
)
)

;"disturb","V","1.viGna_padZa[dAla]"

;Rule disturb2 changed=> added the relation kriyA-subject instead of cat(Meena 03-08-09) 
;Some bad elements in the crowd disturbed the speech.
(defrule disturb2
(declare (salience 5000))
(id-root ?id disturb)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(id-root ?id1 ?)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  viGna_dAla))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disturb.clp 	disturb2   "  ?id "   viGna_dAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  disturb.clp   disturb2   "  ?id " meM )" crlf)
)
)

;"disturb","VT","1.viGna_dAlanA/SAMwi_BaMga_karanA"
;Some bad elements in the crowd disturbed the speech.
;--"2.GabadZAnA"
;She was disturbed about the violence breaking out in the old city.
;--"3.CedZanA/sawAnA"
;Don't disturb the patient's wounds by moving him too rapidly!
;
;LEVEL 
;Headword : disturb
;
;Examples --
;
;"disturb","VT","1.viGna_dAlanA"
;Some bad elements in the crowd disturbed the speech.
;BIdZa meM mOjUxa kuCa bure wawwvoM ne BARaNa meM viGna dAlA.<---BARaNa kI vyavasWA ko CedZanA
;--"2.ciMwiwa_honA"
;She was disturbed about the violence breaking out in the old city.
;purAne Sahara meM hiMsAwmaka GatanAoM ke kAraNa vaha cinwiwa WI.<--mana vyAkula honA<--mana kI SAnwi BaMga honA<--cinwAoM xvArA mana kI SAnwi meM viGna dAlA jAnA<--mana kI SAMwi ko CedZanA
;--"3.aswavyaswa_karanA"
;Don't disturb the clothes in my closet.
;merI almArI meM kapadZoM ko aswavyaswa nahIM karo.<--kapadZoM kI vyavasWA ko CedZanA
;--"4.CedZanA"
;Don't disturb the patient's wounds by moving him too rapidly!
;marIjZa wejZI se hilA kara usakI cotoM ko mawa CedZo.
;
;Upara xiye saBI uxAharaNoM se 'disturb' Sabxa meM 'kisI vyavasWA ko aswavyaswa karane' kA BAva lagawA hE. awaH isakA sUwra hogA ; 
;
;sUwra : viGna_dAlanA[<aswavyaswa_karanA]
;

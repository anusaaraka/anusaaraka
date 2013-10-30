
(defrule head0
(declare (salience 5000))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id headed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id siravAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  head.clp  	head0   "  ?id "  siravAlA )" crlf))
)

;"headed","Adj","1.siravAlA"
;hipopotomasa badA"headed" jAnavara hE.
;
;
(defrule head1
(declare (salience 4900))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kI_waraPa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " head.clp	head1  "  ?id "  " ?id1 "  kI_waraPa_jA  )" crlf))
)

;He headed off towards the river to have some water.
;vaha pAnI lene ke lie naxI kI waraPa calA gayA
(defrule head2
(declare (salience 4800))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZakara_modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " head.clp	head2  "  ?id "  " ?id1 "  Age_baDZakara_modZa  )" crlf))
)

(defrule head3
(declare (salience 4700))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZakara_modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " head.clp	head3  "  ?id "  " ?id1 "  Age_baDZakara_modZa  )" crlf))
)

(defrule head4
(declare (salience 4600))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  head.clp 	head4   "  ?id "  sira )" crlf))
)

;default_sense && category=noun	SIrRa	0
; 'sira' is a simple word than 'SirRa'
;default_sense && category=noun	sira	0
;"head","N","1.sira"
;usakI "head" para cota lagI hE.
;
;
;LEVEL 
;Headword : head 
;
;Examples --
;
;--"1.sira"
;He fell && hurt his head.
;vaha gira gayA Ora usake sira ko cota laga gayI. 
;--"2.ximAga/buxXi"
;Use your head to solve this problem.
;isa samasyA ko sulaJAne ke liye apane ximAga kA iswamAla karo.
;Meena had a good head for Mathematics. 
;mInA ke pAsa gaNiwa ke liye acCA ximAga hE.
;mInA kA ximAga gaNiwa meM calawA hE.
;--"3.mana/maswiRka"
;The idea never entered my head.
;yaha vicAra kaBI mere mana meM nahIM AyA.
;--"4.SIrRaka"
;The heading of the seminar is 'Freedom'.
;saMgoRTI kA SIrRaka hE 'svecCA'.
;--"5.praXAna"
;Sonia is the head of the Congress party.
;kAzgresa pArti kI newA soniyA hE.
;--"6.UzcAI{sira ke barAbara kA nApa}"
;That Boy was taller than his father by a head.
;vaha ladZakA apane piwA se eka sira (ke nApa ke barAbara) UzcA WA.  
;--"7.SIrRa"
;China is located on the head of the India.
;BArawa ke SIrRa para cIna xeSa sWiwa hE.    
;--"8.caramabiMxu"             
;Hike of petrol prices brought some tensions to common people but   this latest rise of Electricity charges brought the matters to a head.
;petrola ke xAmoM meM baDowarI ne Ama janawA ko xabAva meM dAlA WA , para hAla hI meM kI gayI vixyuwa xaroM meM vqxXi ne sWiwi ko caramabiMxu para pahuzcA xiyA hE.
;
;
;anwarnihiwa sUwra ; 
;
;  SIrRa - sira--praXAna/SIrRaka -caramabinxu
;          |
;          |-buxXi--mana  
;  
;
;sUwra : SIrRa` 
;
;
;          vyAKyA - yahAz hama xeKa sakawe hE ki "head" Sabxa kA prayoga alaga-alaga 
;                  saMxarBo meM howe hue BI unakA eka sAmAnya arWa nikalawA hE.
;                  uparokwa uxAharaNoM se yaha sAmAnyawA spaRta howA hE.        
;             
;         'sira' yaha Sabxa mUla saMskqwa "SIrRa" se vyuwpanna Sabxa hE. SarIra ke 
;    sabase UparI BAga ko 'SIrRa' kahA gayA. isa Sabxa ko hinxI meM 'sira' kahA gayA.
;    isa sira se saMbaMXiwa waWya 'mana','maswiRka','ximAga','buxXi','jFAna' Axi
;    Sabxa jude.
;         
;    SarIra kA sabase UparI BAga hone ke kAraNa 'agraBAga','SIrRaka' 
;    Ora 'UzcAI' Axi Sabxa ukwa saMxarBo meM prayoga meM Awe hEM .
;
(defrule head5
(declare (salience 4500))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id heading )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SIrRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  head.clp  	head5   "  ?id "  SIrRaka )" crlf))
)

;"heading","N","1.SIrRaka"
;What will be the heading of this story?
;isa kahAnI kA SIrRaka kyA hogA ?
;
(defrule head6
(declare (salience 4400))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kI_waraPa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " head.clp	head6  "  ?id "  " ?id1 "  kI_waraPa_jA  )" crlf))
)

;He headed off towards the river to have some water.
;vaha pAnI lene ke lie naxI kI waraPa calA gayA
(defrule head7
(declare (salience 4300))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZakara_modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " head.clp	head7  "  ?id "  " ?id1 "  Age_baDZakara_modZa  )" crlf))
)

(defrule head8
(declare (salience 4200))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZakara_modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " head.clp	head8  "  ?id "  " ?id1 "  Age_baDZakara_modZa  )" crlf))
)

(defrule head9
(declare (salience 4100))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  head.clp 	head9   "  ?id "  sira )" crlf))
)

;Added by sheetal(26-10-09).
(defrule head10
(declare (salience 4000))
(id-root ?id head)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyakRawA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  head.clp      head10   "  ?id "  aXyakRawA_kara )" crlf))
)
;I have been invited to head the department .

;default_sense && category=noun	SIrRa	0
; 'sira' is a simple word than 'SirRa'
;default_sense && category=noun	sira	0
;"head","N","1.sira"
;usakI "head" para cota lagI hE.
;
;
;LEVEL 
;Headword : head 
;
;Examples --
;
;--"1.sira"
;He fell && hurt his head.
;vaha gira gayA Ora usake sira ko cota laga gayI. 
;--"2.ximAga/buxXi"
;Use your head to solve this problem.
;isa samasyA ko sulaJAne ke liye apane ximAga kA iswamAla karo.
;Meena had a good head for Mathematics. 
;mInA ke pAsa gaNiwa ke liye acCA ximAga hE.
;mInA kA ximAga gaNiwa meM calawA hE.
;--"3.mana/maswiRka"
;The idea never entered my head.
;yaha vicAra kaBI mere mana meM nahIM AyA.
;--"4.SIrRaka"
;The heading of the seminar is 'Freedom'.
;saMgoRTI kA SIrRaka hE 'svecCA'.
;--"5.praXAna"
;Sonia is the head of the Congress party.
;kAzgresa pArti kI newA soniyA hE.
;--"6.UzcAI{sira ke barAbara kA nApa}"
;That Boy was taller than his father by a head.
;vaha ladZakA apane piwA se eka sira (ke nApa ke barAbara) UzcA WA.  
;--"7.SIrRa"
;China is located on the head of the India.
;BArawa ke SIrRa para cIna xeSa sWiwa hE.    
;--"8.caramabiMxu"             
;Hike of petrol prices brought some tensions to common people but   this latest rise of Electricity charges brought the matters to a head.
;petrola ke xAmoM meM baDowarI ne Ama janawA ko xabAva meM dAlA WA , para hAla hI meM kI gayI vixyuwa xaroM meM vqxXi ne sWiwi ko caramabiMxu para pahuzcA xiyA hE.
;
;
;anwarnihiwa sUwra ; 
;
;  SIrRa - sira--praXAna/SIrRaka -caramabinxu
;          |
;          |-buxXi--mana  
;  
;
;sUwra : SIrRa` 
;
;
;          vyAKyA - yahAz hama xeKa sakawe hE ki "head" Sabxa kA prayoga alaga-alaga 
;                  saMxarBo meM howe hue BI unakA eka sAmAnya arWa nikalawA hE.
;                  uparokwa uxAharaNoM se yaha sAmAnyawA spaRta howA hE.        
;             
;         'sira' yaha Sabxa mUla saMskqwa "SIrRa" se vyuwpanna Sabxa hE. SarIra ke 
;    sabase UparI BAga ko 'SIrRa' kahA gayA. isa Sabxa ko hinxI meM 'sira' kahA gayA.
;    isa sira se saMbaMXiwa waWya 'mana','maswiRka','ximAga','buxXi','jFAna' Axi
;    Sabxa jude.
;         
;    SarIra kA sabase UparI BAga hone ke kAraNa 'agraBAga','SIrRaka' 
;    Ora 'UzcAI' Axi Sabxa ukwa saMxarBo meM prayoga meM Awe hEM .
;  

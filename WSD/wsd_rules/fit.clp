
(defrule fit0
(declare (salience 5000))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fitted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samA_xenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fit.clp  	fit0   "  ?id "  samA_xenA )" crlf))
)

;"fitted","Adj","1.samA_xenA"
;He has somehow fitted all his clothes in the wardrobe.
;
;
(defrule fit1
(declare (salience 4900))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saBI_jZarUrawa_kI_cIjZeM_muhEyA_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fit.clp	fit1  "  ?id "  " ?id1 "  saBI_jZarUrawa_kI_cIjZeM_muhEyA_karA  )" crlf))
)

;The ship is being fitted out for the voyage.
;jahAja ko yAwrA ke lie saBI jZarUrawa kI  cIjZeM muhEyA karA xI gaIM
(defrule fit2
(declare (salience 4800))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMxuruswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fit.clp 	fit2   "  ?id "  waMxuruswa )" crlf))
)

(defrule fit3
(declare (salience 4700))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fit.clp 	fit3   "  ?id "  xOrA )" crlf))
)

(defrule fit4
(declare (salience 4600))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fit.clp 	fit4   "  ?id "  samA )" crlf))
)

;"fit","V","1.samAnA"
;Only four persons can fit in this car.
;--"2.sahI_bETanA"
;This peg is a tight fit on this hole.
;This clause does not fit in this agreement.
;
;
;LEVEL 
;Headword : fit
;
;Examples --
;
;"fit","Adj","1.svasWa" <--TIka
;Sportsmen have to be very fit
;KilAdiyoM ko svasWa rahanA anivArya hE
;--"2.lAyaka" <--TIka
;The water is fit to drink now.
;aba pAnI pIne lAyaka hE
;--"3.uciwa"<--TIka
;A fit subject for discussion
;vAxa-vivAxa ke lie uciwa viRaya hE
;
;"fit","V","1.samAnA"<--TIka_bETanA
;Only four persons can fit in this car
;cAra loga hI isa gAdI meM samA sakawe hEM
;--"2.TIka_bETanA"
;The shoe fits me
;jUwA TIka bETawA hE
;
;"fit","N","1.xOrA"
;He gets fits due to epilepsy
;use miragI ke kAraNa xOrA padawA hE
;--"2.AveSa"
;In a fit of anger he slapped him
;vaha AveSa se use Wappada mArA 
;
;vyAKyA --
;
;uparyukwa viSeRaNa va kriyA vAkyoM meM anwawa: `TIka' niRkarRa nikalawA hE kriyA vAkya 1.meM `samAnA'kA yaha BAva hE ki gAdI meM cAra loga hI TIka bETa sakawe hEM. 
;jahAz waka 'fit' Sabxa ke saMjFA prayoga kA sambanXa hE vahAz arWa Binna ho rahA hE. vahAz BI xo arWa hEM para ye paraspara sambanXiwa hEM. pahalA arWa 'xOrA' hE waWA xUsarA 'AveSa'. 'xOrA' AveSa kI carama sWiwi hE. 
;
;isakA sUwra kuCa isa prakAra se hogA  
;         
;sUwra : TIka/xOrA
;
;kyoMki prayoga kI xqRti se yaha eka kAPI jatila Sabxa hE, awaH anusAraka Autaputa meM yaha 'Pita' hI AegA.
;
;
(defrule fit5
(declare (salience 4500))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fitting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAmAyika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fit.clp  	fit5   "  ?id "  sAmAyika )" crlf))
)

;"fitting","Adj","1.sAmAyika"
;He gave a fitting speech on the occasion.
;
(defrule fit6
(declare (salience 4400))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fitting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAmAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fit.clp  	fit6   "  ?id "  sAmAna )" crlf))
)

;"fitting","N","1.sAmAna"
;All the fittings in this office are removable.
;--"2.kapadZe_banavAnA"
;I went to the tailor for fitting out the new dress.
;
(defrule fit7
(declare (salience 4300))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saBI_jZarUrawa_kI_cIjZeM_muhEyA_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fit.clp	fit7  "  ?id "  " ?id1 "  saBI_jZarUrawa_kI_cIjZeM_muhEyA_karA  )" crlf))
)

;The ship is being fitted out for the voyage.
;jahAja ko yAwrA ke lie saBI jZarUrawa kI  cIjZeM muhEyA karA xI gaIM
(defrule fit8
(declare (salience 4200))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMxuruswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fit.clp 	fit8   "  ?id "  waMxuruswa )" crlf))
)

(defrule fit9
(declare (salience 4100))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fit.clp 	fit9   "  ?id "  xOrA )" crlf))
)

(defrule fit10
(declare (salience 4000))
(id-root ?id fit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fit.clp 	fit10   "  ?id "  samA )" crlf))
)

;"fit","V","1.samAnA"
;Only four persons can fit in this car.
;--"2.sahI_bETanA"
;This peg is a tight fit on this hole.
;This clause does not fit in this agreement.
;
;
;LEVEL 
;Headword : fit
;
;Examples --
;
;"fit","Adj","1.svasWa" <--TIka
;Sportsmen have to be very fit
;KilAdiyoM ko svasWa rahanA anivArya hE
;--"2.lAyaka" <--TIka
;The water is fit to drink now.
;aba pAnI pIne lAyaka hE
;--"3.uciwa"<--TIka
;A fit subject for discussion
;vAxa-vivAxa ke lie uciwa viRaya hE
;
;"fit","V","1.samAnA"<--TIka_bETanA
;Only four persons can fit in this car
;cAra loga hI isa gAdI meM samA sakawe hEM
;--"2.TIka_bETanA"
;The shoe fits me
;jUwA TIka bETawA hE
;
;"fit","N","1.xOrA"
;He gets fits due to epilepsy
;use miragI ke kAraNa xOrA padawA hE
;--"2.AveSa"
;In a fit of anger he slapped him
;vaha AveSa se use Wappada mArA 
;
;vyAKyA --
;
;uparyukwa viSeRaNa va kriyA vAkyoM meM anwawa: `TIka' niRkarRa nikalawA hE kriyA vAkya 1.meM `samAnA'kA yaha BAva hE ki gAdI meM cAra loga hI TIka bETa sakawe hEM. 
;jahAz waka 'fit' Sabxa ke saMjFA prayoga kA sambanXa hE vahAz arWa Binna ho rahA hE. vahAz BI xo arWa hEM para ye paraspara sambanXiwa hEM. pahalA arWa 'xOrA' hE waWA xUsarA 'AveSa'. 'xOrA' AveSa kI carama sWiwi hE. 
;
;isakA sUwra kuCa isa prakAra se hogA  
;         
;sUwra : TIka/xOrA
;
;kyoMki prayoga kI xqRti se yaha eka kAPI jatila Sabxa hE, awaH anusAraka Autaputa meM yaha 'Pita' hI AegA.
;
;

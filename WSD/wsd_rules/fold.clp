
(defrule fold0
(declare (salience 5000))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fold.clp	fold0  "  ?id "  " ?id1 "  PeMta  )" crlf))
)

(defrule fold1
(declare (salience 4900))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fold.clp	fold1  "  ?id "  " ?id1 "  PeMta  )" crlf))
)

(defrule fold2
(declare (salience 4800))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fold.clp	fold2  "  ?id "  " ?id1 "  PeMta  )" crlf))
)

(defrule fold3
(declare (salience 4700))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fold.clp	fold3  "  ?id "  " ?id1 "  PeMta  )" crlf))
)

(defrule fold4
(declare (salience 4600))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fold.clp	fold4  "  ?id "  " ?id1 "  PeMta  )" crlf))
)

(defrule fold5
(declare (salience 4500))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fold.clp	fold5  "  ?id "  " ?id1 "  PeMta  )" crlf))
)

(defrule fold6
(declare (salience 4400))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fold.clp 	fold6   "  ?id "  waha_kara )" crlf))
)

(defrule fold7
(declare (salience 4300))
(id-root ?id fold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Suffix)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fold.clp 	fold7   "  ?id "  gunA )" crlf))
)

;"fold","Suffix","1.gunA"
;He has multiplied his money tenfold by investing judiciously.
;
;LEVEL 
;Headword : fold
;
;Examples --
;
;"Fold","V"
;       
;--"1.wahAnA"
;When I saw Sita she was folding her clothes. 
;jaba mEne sIwA ko xeKA vaha apane kapadZe wahA rahI WI.  
;--"2.mudZanA"
;After the party Ravi folded the chairs && kept them in a corner.  
;pArtI ke bAxa ravi ne kursiyo ko modZA Ora eka kone meM raKa xiyA.
;--"3.jodZanA"
;She folded her hands in a gesture of greeting.
;usane vanxana karane ke liye apane hAWa jodZa liye.
;--"4.sametanA"     
;Ravi folded the baby in his arms. 
;ravi ne bacce ko apanI bAhoM meM sameta liyA. 
;
;uparyukwa vAkyo ko XyAna se paraKane ke bAxa yaha spaRta ho jAwA hE ki eka
;Sabxa ke aneka arWa howe hue BI vaha eka xUsare se baMXe howe hEM.  
;
;anwarnihiwa sUwra ;
;
;     1.jaba mEne sIwA ko xeKA vaha apane kapadZe waha rahI WI. -- wahanA
;                                                   |                   
;                                                   | 
;     2.ravi ke pAsa mudZane vAlI kursI hEM.       modZanA
;                                                   |
;                                                   |
;                                                jodZanA
;                                                   |
;                                                   |
;    3.ravi ne bacce ko apanI bAhoM meM sameta liyA.  sametanA
;
;
;spaRta hE ki waha karane kI prakriyA meM modZanA SAmila, jaba kuCa xoharA mudZawA hE wo judZa BI jAwA hE Ora simata BI jAwA hE. awaH isakA mUlArWa 'waha' hI hogA. isakA
;sUwra banegA -
;
;sUwra : waha`
;

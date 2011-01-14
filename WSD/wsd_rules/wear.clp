
(defrule wear0
(declare (salience 5000))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear0  "  ?id "  " ?id1 "  Gata_jA  )" crlf))
)


(defrule wear1
(declare (salience 4800))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre-XIre_lupwa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear1  "  ?id "  " ?id1 "  XIre-XIre_lupwa_ho_jA  )" crlf))
)



(defrule wear2
(declare (salience 4600))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre_XIre_bIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear2  "  ?id "  " ?id1 "  XIre_XIre_bIwa  )" crlf))
)



(defrule wear3
(declare (salience 4400))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gisa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear3  "  ?id "  " ?id1 "  Gisa_jA  )" crlf))
)


(defrule wear4
(declare (salience 4200))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 thin)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gisa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wear.clp	wear4  "  ?id "  " ?id1 "  Gisa_jA  )" crlf))
)


;Added by Meena(3.02.10)
;In some countries wearing yashmak is compulsory for women .
(defrule wear5
(declare (salience 4100))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp      wear5   "  ?id "  pahana )" crlf))
)




;Salience reduced by Meena(3.02.10)
(defrule wear6
(declare (salience 0))
(id-root ?id wear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wear.clp 	wear6   "  ?id "  pahana )" crlf))
)

;default_sense && category=verb	pahana	0
;"wear","VTI","1.pahananA"
;Wear this jacket   .
;--"2.BAva_honA"
;His face wore a sad look.
;--"3.Gisa_jAnA"
;The tyres are worn due to constant use.
;--"4.jZyAxA_calanA"
;Fashion clothes often do not wear very long.
;
;

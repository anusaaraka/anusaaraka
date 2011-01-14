
(defrule count0
(declare (salience 5000))
(id-root ?id count)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SAmila_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " count.clp	count0  "  ?id "  " ?id1 "  SAmila_kara  )" crlf))
)

;We can count her in for the party.
;hama use BI pArtI meM SAmila kara sakawe hEM
(defrule count1
(declare (salience 4900))
(id-root ?id count)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SAmila_na_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " count.clp	count1  "  ?id "  " ?id1 "  SAmila_na_kara  )" crlf))
)

;If you are going for party, you can count me out.
;yaxi wuma pArtI meM jA rahe ho wo muJe SAmila mawa karanA
(defrule count2
(declare (salience 4800))
(id-root ?id count)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BarosA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " count.clp	count2  "  ?id "  " ?id1 "  BarosA_kara  )" crlf))
)

;You can count upon her for this work.
;wuma isa kAma ke lie usapara viSvAsa kara sakawe ho
(defrule count3
(declare (salience 4700))
(id-root ?id count)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ginawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  count.clp 	count3   "  ?id "  ginawI )" crlf))
)

;default_sense && category=noun	gaNanA	0
;"count","N","1.gaNanA/ginawI"
;The food rich in fat will boost the calorie count.
;--"2.eka_badZA_kulIna_jana"
;His father is a count.
;--"3.aBiyoga_iljZAma"
;The judge said to the criminal,'The counts against you are many'. 
;
(defrule count4
(declare (salience 4600))
(id-root ?id count)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  count.clp 	count4   "  ?id "  gina )" crlf))
)

;"count","VT","1.ginanA"
;Can you count the books on your shelf?
;--"2.mAna_karanA"
;The academy counts several Nobel Prize winners among its members.
;--"3.BarosA_karanA"
;I can count on my friends during.
;

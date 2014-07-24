;$$$  Modified by Preeti(23-4-14)
;The company has chalked up its highest ever profits. [usingenglish.com]
;kaMpanI ne apanA sarvAXika lABa xarja kiyA hE.
(defrule chalk0
(declare (salience 5000))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
;(kriyA-object ?id ?);condition removed
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xarja_kara));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chalk.clp	chalk0  "  ?id "  " ?id1 "  xarja_kara  )" crlf))
)

;He has chalked up in the game.
;usane Kela meM jIwa hAsila kara lI
(defrule chalk1
;(declare (salience 4900));salience changed
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mawWe_maDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chalk.clp	chalk1  "  ?id "  " ?id1 "  mawWe_maDZa  )" crlf))
)

;You cannot chalk up your mistakes on others.
;wuma apanI galwiyAz xUsaroM ke mawWe nahIM maDZa sakawe
(defrule chalk2
;(declare (salience 4800));salience changed
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " chalk.clp chalk2 " ?id "  liKa )" crlf)) 
)

;$$$  Modified by Preeti(23-4-14)
;She chalked up the day's menu on the board. [Oxford Advanced Learner's Dictionary]
;usane borda para xina kA menU KadiyA_se liKA.
(defrule chalk3
;(declare (salience 4700))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 up)
;(kriyA-upasarga ?id ?id1);condition removed
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  KadZiyA_se_liKa));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " chalk.clp	chalk3  "  ?id "    KadZiyA_se_liKa )" crlf))
)

(defrule chalk4
(declare (salience 4600))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chalk.clp 	chalk4   "  ?id "  KadZiyA )" crlf))
)

;$$$  Modified by Preeti(23-4-14)
;He chalked the stage to show the actors where they should stand. [merriam-webster.com]
;usane aBinewAoM maMca para kahAz KadA honA cAhie yaha xiKAne ke liye cihna lagAyA  .
(defrule chalk5
(declare (salience 4500))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1);condition added
(id-root ?id1 stage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cihna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chalk.clp 	chalk5   "  ?id "  cihna_lagA )" crlf))
)

;parser problem
;@@@ Added by Preeti(23-4-14)
;They chalked the poor sales up to the lower numbers of tourists visiting this year. [usingenglish.com]
; isa varRa  paryatakoM kI sMKyA kama hone ko unhoMne  KarAba bikrI kA kAraNa samJA.
(defrule chalk6
(declare (salience 5000))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upto)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAraNa_samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chalk.clp	chalk6  "  ?id "  " ?id1 "  kAraNa_samaJa  )" crlf))
)

;@@@ Added by Preeti(23-4-14)
;She chalked up the day's menu on the board. [Oxford Advanced Learner's Dictionary]
;usane borda para xina kA menU KadiyA_se liKA.
(defrule chalk7
(declare (salience 5050))
(id-root ?id chalk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id2)
(id-root ?id2 menu)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  KadZiyA_se_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chalk.clp	chalk7  "  ?id "  " ?id1 "   KadZiyA_se_liKa  )" crlf))
)

;"chalk","VT","1.cihna_lagAnA"
;We have to chalk the items that have to be bought from the list .
;
;

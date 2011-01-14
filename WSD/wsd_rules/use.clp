;Added by Meena(20.7.10)
;This book is designed to be used in either an algebra based physics course or a calculus based physics course that has calculus as a corequisite.
(defrule to_be_use00
(declare (salience 5000))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id used)
(id-root =(- ?id 2) to)
(id-root =(- ?id 1) be)
(id-root ?id1 ?)
(kriyA-kqxanwa_karma  ?id1 =(- ?id 1))
(kriyA-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(- ?id 2)  prayoga_hone_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " use.clp  use00  "  ?id "  " (- ?id 1) "   " (- ?id 2) "  prayoga_hone_ke_liye  )" crlf))
)



;Added by Meena(19.11.10)
;In physics, the term “fluid” is used to mean either a gas or a liquid.
(defrule used_to
(declare (salience 5000))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id used)
(id-root =(+ ?id 1) to|for)
(id-root =(+ ?id 2) mean)
(kriyA-kqxanwa_karma  ?id =(+ ?id 2))
;(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2)  arWa_hone_ke_liye_prayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " use.clp  used_to  "  ?id "  " (+ ?id 1) "   " (+ ?id 2) "  prayoga_kiyA_jA  )" crlf))
)




;Added by Meena(12.1.11)
;She hurt her arm in the fall and lost the use of her fingers temporarily.
(defrule use00
(declare (salience 5000))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 finger|mind|leg|arm|hand|eye|brain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayogitA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp       use00   "  ?id "  upayogitA )" crlf))
)





;Salience reduced by Meena(12.1.11)
(defrule use0
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp 	use0   "  ?id "  upayoga )" crlf))
)

;Added by Sukhada(13-03-10)
;We now know that there are two thousand elements which we can not use to make a good light bulb .
(defrule use_which
(declare (salience 4900))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-word ?id1 which)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp       use_which   "  ?id "  upayoga_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  use.clp       use_which   "  ?id "  ko )" crlf)
)
)



;"use","N","1.upayoga"
;--"2.prayoga/Boga/sevana"
;the steps were worn from years of use
;--"3.AvaSyakawA"
; he put his knowledge to good use
;--"4.lABa/prayojana"
; we were given the use of his boat
;

(defrule use1
(declare (salience 4800))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp 	use1   "  ?id "  upayoga_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  use.clp       use1   "  ?id "  kA )" crlf)
)
)

;"use","V","1.upayoga_kara"

;(defrule use2
;(declare (salience 4900))
;(id-root ?id use)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(id-root =(- ?id 1) to)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id upayoga_karane_ke_liye))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp      use2   "  ?id "  upayoga_karane_ke_liye )" crlf))
;(assert (kriyA_id-object_viBakwi ?id kA))
;)


;
(defrule use3
(declare (salience 0))
;(declare (salience 4700))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp 	use3   "  ?id "  upayoga_kara )" crlf))
)

;"use","VTI","1.prayoga_kara"
; She uses drugs rarely.
;

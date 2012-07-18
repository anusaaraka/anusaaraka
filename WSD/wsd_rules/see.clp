
;FILE MODIFIED BY Meena(20.5.10); deleted the redundant rules




;Added by Meena(4.12.09)
;I am in Newyork and I would like to see you.
(defrule see0
(declare (salience 4800))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(not(id-cat_coarse =(+ ?id 1) determiner))
(or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp      see0   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  see.clp      see0   "  ?id " se )" crlf)
)
)


;Modified this rule by Roja(17-07-12). As the fact is (affecting_id-affected_id-mng_to_be_overwrite) not in use.
(defrule see1
(declare (salience 5000))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
;(assert (affecting_id-affected_id-mng_to_be_overwrite ?id ?id1 -)) 
;(assert (id-wsd_root_mng ?id samaJa))
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  see.clp       see1   "  ?id " " ?id1" samaJa )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp 	see1   "  ?id "  samaJa )" crlf))
))

;Added by Meena(20.5.10)
;I must see about lunch .
(defrule see2
(declare (salience 4900))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) about)
(id-root ?id1 lunch|dinner|party|meeting)
(kriyA-about_saMbanXI ?id  ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1)  kA_prabanXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " see.clp  see2  "  ?id "  " (+ ?id 1) " kA_prabanXa_kara  )" crlf))
)




;Added by Meena(20.5.10)
;;Typically , a doctor will see about thirty patients a day . 
;(defrule see3
;(declare (salience 4800))
;(id-root ?id see)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) about)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id xeKa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see3   "  ?id "  xeKa )" crlf))
;)




(defrule see4
(declare (salience 4900))
;(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id saw)
;(id-root ?id1 ?)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
;(assert (id-wsd_root ?id see))
(assert (kriyA_id-object_viBakwi ?id ko))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp    see4   "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  see.clp    see4   "  ?id " ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  see.clp    see4   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  see.clp    see4   "  ?id " see )" crlf))
)




;Modified by sheetal(2-01-10).
(defrule see5
(declare (salience 4700))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not (id-word ?id1 anything));added by sheetal.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp       see5   "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  see.clp       see5   "  ?id " ko )" crlf)
)
)





(defrule see6
(declare (salience 4600))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seen )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xeKa))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see6   "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  see.clp        see6   "  ?id "  yA )" crlf))
)

;"seen","V","1.xeKA"
;I haven't seen her for ages.


;It was so dark that I could not see anything . 
;default_sense && category=verb xeKa    0
;"see","V","1.xeKanA"
;I can see sun setting behind the sea.
;--"2.se milanA"
;The principal wants to see you in the interval.
;--"3.pawA lagAnA"
;Just go && see what children are doing .
;--"4.samaJanA"
;He didn't see the joke.
;--"5.anuBava karanA"
;He has seen a great deal in his long life.
;--"6.sAWa jAnA"
;I saw the old lady across the road.
;--"7.kalpanA karanA"
;Her colleagues see her as a future director.
;
;
;default_sense && category=verb	xeKa	0
;"see","V","1.xeKanA"
;I can see sun setting behind the sea.
;--"2.se milanA"
;The principal wants to see you in the interval.
;--"3.pawA lagAnA"
;Just go && see what children are doing .
;--"4.samaJanA"
;He didn't see the joke.
;--"5.anuBava karanA"
;He has seen a great deal in his long life.
;--"6.sAWa jAnA"
;I saw the old lady across the road.
;--"7.kalpanA karanA"
;Her colleagues see her as a future director.
;
;

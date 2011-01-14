
(defrule mix0
(declare (salience 5000))
(id-root ?id mix)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mixed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id miSra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mix.clp  	mix0   "  ?id "  miSra )" crlf))
)

;"mixed","Adj","1.miSra/milA huA"
;She ordered mixed vegetables.
;
;
(defrule mix1
(declare (salience 4900))
(id-root ?id mix)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Brama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " mix.clp	mix1  "  ?id "  " ?id1 "  Brama  )" crlf))
)

;These two sisters are almost identical && i often use to mix them up.
;
(defrule mix2
(declare (salience 4800))
(id-root ?id mix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miSraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mix.clp 	mix2   "  ?id "  miSraNa )" crlf))
)

;"mix","N","1.miSraNa/Gola"
;Wait till the residue settles down in the mix.
;
(defrule mix3
(declare (salience 4700))
(id-root ?id mix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miSraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mix.clp 	mix3   "  ?id "  miSraNa_kara )" crlf))
)

;"mix","V","1.miSraNa_karanA"
;She mixed the sounds to create the effect.
;--"2.milAnA"
;Mix the coupons properly.
;--"3.GulanA"
;The colors mix well.
;

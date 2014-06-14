;@@@ Added by Nandini (27-11-13)
;She gifted a lace handkerchief to her fiance.
(defrule lace4
(declare (salience 80))     
(id-root ?id lace)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 handkerchief|curtain)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id noun)
=>	
(retract ?mng)
(assert (id-wsd_root_mng ?id lEsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lace.clp 	lace4   "  ?id "  lEsa )" crlf))
)


;@@@ Added by Nandini (27-11-13)
;He was sitting on the bed lacing up his shoes. 
;vaha usake jUwe lEsa bAzXawe_hue biswara para bETA WA.
(defrule lace3
(declare (salience 160))
(id-root ?id lace)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lEsa_bAzXa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lace.clp	lace3  "  ?id "  " ?id1 "  lEsa_bAzXa  )" crlf))
)

;@@@ Added by Nandini (27-11-13)
;He had laced her milk with rum. 
;vaha rama ke sAWa usakA xUXa milA cukA WA.
(defrule lace2
(declare (salience 150))
(id-root ?id lace)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lace.clp 	lace2   "  ?id " milA )" crlf))
)

;Reduce salience by Nandini
;Lace your shoes.
;Apake jUwe ko PIwA bAzXie.
(defrule lace1
;(declare (salience 4900))
(declare (salience 100)) 
(id-root ?id lace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwA_bAzXa))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lace.clp 	lace1   "  ?id "  PIwA_bAzXa )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  word.clp  word-rull-number   "  ?id " ko )" crlf)
)

;Modified by Nandini (27-11-13)
;"lace","N","1.PIwA"
;shoe-lace.
(defrule lace0
;(declare (salience 5000))  
(declare (salience 50))     ;Reduce salience by Nandini
(id-root ?id lace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lEsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lace.clp 	lace0   "  ?id "  lEsa )" crlf))
)

;"lace","V","1.PIwA_bAzXanA"
;Lace your shoes.
;--"2.puta_xenA"
;He drinks soda-water laced with alchohol.
;
;===========Additional-sentences================
;The detective found some hairs on a tablecloth edged with lace.
;The drawing room looked elegant with the lace curtains.
;She was wearing a dress that laced up at the side.
;He drinks soda-water laced with alchohol.
;Her conversation was laced with witty asides.


(defrule meet0
(declare (salience 5000))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id meeting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  meet.clp  	meet0   "  ?id "  saBA )" crlf))
)

;given_word=meeting && word_category=noun	$bETaka)

;"meeting","N","1.bETaka"
;The meeting was postponed due to the strike.
;--"2.milana"
;The meeting of the two friends after a gap of ten years was accidental.
;



;Added by Meena(6.5.10)
;I will show you the house where I met your mother . 
(defrule meet1
(declare (salience 4900))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp      meet1   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  meet.clp      meet1   "  ?id "  se )" crlf)
)
)




;Salience reduced by Meena(6.5.10)
(defrule meet2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id meet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  meet.clp 	meet2   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  meet.clp      meet2   "  ?id "  ko )" crlf)
)
)

;"meet","V","1.milanA"
;I don't know whether I would like to meet her.
;--"2.se_BeMta_karanA"
;The Prime MInister met his cabinet for the talks.
;--"3.sAmanA_karanA"
;The Indian team met the Australians in the finals.
;--"4.pUrA_kara_pAnA"
;It is impossible to meet the deadline under the present circumstances.
;
;

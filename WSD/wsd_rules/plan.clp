
(defrule plan0
(declare (salience 5000))
(id-root ?id plan)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id planning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yojanA2))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plan.clp  	plan0   "  ?id "  yojanA2 )" crlf))
)

;"planning","N","1.yojanA2"
(defrule plan1
(declare (salience 4900))
(id-root ?id plan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA_banA))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plan.clp 	plan1   "  ?id "  yojanA_banA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  plan.clp      plan1   "  ?id " kI )" crlf)
)
)

(defrule plan2
(declare (salience 4800))
(id-root ?id plan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plan.clp 	plan2   "  ?id "  yojanA )" crlf))
)

;"plan","N","1.yojanA"
;The Government should make a plan to bring up the poor.
;--"2.mApaciwra"
;A building plan was approved by the authority.
;
;

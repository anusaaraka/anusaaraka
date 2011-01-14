
(defrule bake0
(declare (salience 5000))
(id-root ?id bake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id baking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id seMkane_kI_kriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bake.clp  	bake0   "  ?id "  seMkane_kI_kriyA )" crlf))
)

;"baking","N","1.seMkane_kI_kriyA"
;Get me a baking tin.
;
(defrule bake1
(declare (salience 4900))
(id-root ?id bake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sezka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bake.clp 	bake1   "  ?id "  sezka )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ke_liye))
)

;"bake","VT","1.sezkanA"
;Sita is baking  breads for breakfast.
;
;

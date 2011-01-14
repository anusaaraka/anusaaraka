
(defrule love0
(declare (salience 5000))
(id-root ?id love)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id loving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pyAra_BarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  love.clp  	love0   "  ?id "  pyAra_BarA )" crlf))
)

(defrule love1
(declare (salience 4900))
(id-root ?id love)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prema))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  love.clp 	love1   "  ?id "  prema )" crlf))
)

(defrule love2
(declare (salience 4800))
(id-root ?id love)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasanxa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  love.clp 	love2   "  ?id "  pasanxa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  love.clp      love2   "  ?id " ko )" crlf)
)
)

;"love","VTI","1.pasanxa_karanA"
;I love French food
;I love cooking
;--"2.pyAra_karanA"
;She loves her husband deeply
;
;

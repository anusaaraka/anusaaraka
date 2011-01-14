
(defrule praise0
(declare (salience 5000))
(id-root ?id praise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  praise.clp 	praise0   "  ?id "  praSaMsA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  praise.clp    praise0   "  ?id " kI )" crlf)
)
)

(defrule praise1
(declare (salience 4900))
(id-root ?id praise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  praise.clp 	praise1   "  ?id "  praSaMsA )" crlf))
)

(defrule praise2
(declare (salience 4800))
(id-root ?id praise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSaMsA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  praise.clp 	praise2   "  ?id "  praSaMsA_kara )" crlf))
)

;"praise","V","1.praSaMsA"
;His teachers are full of praise for his work.
;--"2.swuwi"
;They sang a hymn of praise.
;
;


(defrule closet0
(declare (salience 5000))
(id-root ?id closet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gopanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  closet.clp 	closet0   "  ?id "  gopanIya )" crlf))
)

;"closet","Adj","1.gopanIya"
;He is a closet smuggler.
;
(defrule closet1
(declare (salience 4900))
(id-root ?id closet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alamArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  closet.clp 	closet1   "  ?id "  alamArI )" crlf))
)

;"closet","N","1.alamArI"
;I kept all my jewelleries in the closet.
;
(defrule closet2
(declare (salience 4800))
(id-root ?id closet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_kArya_meM_magna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  closet.clp 	closet2   "  ?id "  kisI_kArya_meM_magna_ho )" crlf))
)

;"closet","V","1.kisI_kArya_meM_magna_honA"
;They were closeted in the classroom with the Professor.
;

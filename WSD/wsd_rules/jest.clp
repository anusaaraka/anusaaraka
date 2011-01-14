
(defrule jest0
(declare (salience 5000))
(id-root ?id jest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jest.clp 	jest0   "  ?id "  majAka )" crlf))
)

;"jest","N","1.majAka"
;I said it only in jest.
;
(defrule jest1
(declare (salience 4900))
(id-root ?id jest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsI_udZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jest.clp 	jest1   "  ?id "  hazsI_udZA )" crlf))
)

;"jest","V","1.hazsI_udZAnA"
;Don't jest about anyone's physical deformity.
;

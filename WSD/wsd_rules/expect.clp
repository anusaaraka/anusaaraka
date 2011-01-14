
(defrule expect0
(declare (salience 5000))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 call)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIkRA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect0   "  ?id "  prawIkRA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expect.clp    expect0   "  ?id " kI )" crlf)
)
)

(defrule expect1
(declare (salience 4900))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect1   "  ?id "  ASA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expect.clp    expect1   "  ?id " kI )" crlf)
)
)

;default_sense && category=verb	ASA_raKa	0
;"expect","VT","1.ASA_raKanA"
;We were expecting a visit from our relatives
;
;

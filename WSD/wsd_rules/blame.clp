
(defrule blame0
(declare (salience 5000))
(id-root ?id blame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blame.clp 	blame0   "  ?id "  xoRa )" crlf))
)

(defrule blame1
(declare (salience 4900))
(id-root ?id blame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blame.clp 	blame1   "  ?id "  xoRa_lagA )" crlf))
)

;"blame","VI","1.xoRa_lagAnA/aparAXI_TaharAnA"
;We blamed the accident on her
;
;
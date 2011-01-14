
(defrule fake0
(declare (salience 5000))
(id-root ?id fake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fake.clp 	fake0   "  ?id "  jAlI )" crlf))
)

;"fake","Adj","1.jAlI"
;He presented fake certificates.
;
(defrule fake1
(declare (salience 4900))
(id-root ?id fake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKebAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fake.clp 	fake1   "  ?id "  XoKebAja )" crlf))
)

;"fake","N","1.XoKebAja"
;He is a fake.
;
(defrule fake2
(declare (salience 4800))
(id-root ?id fake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fake.clp 	fake2   "  ?id "  jAlI_banA )" crlf))
)

;"fake","V","1.jAlI_banAnA/nakalI_banAnA"
;He faked his father's signature. 
;

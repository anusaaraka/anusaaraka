
(defrule black0
(declare (salience 5000))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black0   "  ?id "  kAlA )" crlf))
)

(defrule black1
(declare (salience 4900))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black1   "  ?id "  kAlA )" crlf))
)

(defrule black2
(declare (salience 4800))
(id-root ?id black)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  black.clp 	black2   "  ?id "  kAlA )" crlf))
)

;"black","Adj","1.kAlA/SyAma"
;The shop specializes in black leather jackets.
;black deeds
;--"2.aMXerA"
;The future looked black
;a black moonless night
;--"3.BayaMkara"
;A face black with fury
;--"4.uxAsa/sogI"
;Black humor
;Black propaganda
;
;
;"black","Adj","1.kAlA/SyAma"
;The shop specializes in black leather jackets.
;black deeds
;--"2.aMXerA"
;The future looked black
;a black moonless night
;--"3.BayaMkara"
;A face black with fury
;--"4.uxAsa/sogI"
;Black humor
;Black propaganda
;


(defrule productive0
(declare (salience 5000))
(id-root ?id productive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upajAU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  productive.clp 	productive0   "  ?id "  upajAU )" crlf))
)

(defrule productive1
(declare (salience 4900))
(id-root ?id productive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  productive.clp 	productive1   "  ?id "  uwpAxaka )" crlf))
)

;"productive","Adj","1.uwpAxaka"
;Productive methods are invited to implement the project.
;
;

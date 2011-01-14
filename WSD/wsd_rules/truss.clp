
(defrule truss0
(declare (salience 5000))
(id-root ?id truss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DAzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  truss.clp 	truss0   "  ?id "  DAzcA )" crlf))
)

;"truss","N","1.DAzcA"
;The truss caved in,in the auditorium.
;--"2.harniyA_se_pIdiwa_vyakwi_ke_pahanane_kA_kamarabanXa"
;
(defrule truss1
(declare (salience 4900))
(id-root ?id truss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  truss.clp 	truss1   "  ?id "  bAzXa )" crlf))
)

;"truss","VT","1.bAzXanA"
;The owner trussed the dog when the guests arrived .
;


(defrule crimson0
(declare (salience 5000))
(id-root ?id crimson)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa_lAla_raMga_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crimson.clp 	crimson0   "  ?id "  wejZa_lAla_raMga_kA )" crlf))
)

;"crimson","Adj","1.wejZa_lAla_raMga_kA"
;He became crimson with fury.
;
(defrule crimson1
(declare (salience 4900))
(id-root ?id crimson)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiramijZI_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crimson.clp 	crimson1   "  ?id "  kiramijZI_raMga )" crlf))
)

;"crimson","N","1.kiramijZI_raMga"
;The colour of the flower is crimson.
;
(defrule crimson2
(declare (salience 4800))
(id-root ?id crimson)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crimson.clp 	crimson2   "  ?id "  lAla_ho_jA )" crlf))
)

;"crimson","VI","1.lAla_ho_jAnA"
;He turned crimson with shame.
;
(defrule crimson3
(declare (salience 4700))
(id-root ?id crimson)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa_lAla_raMga_meM_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crimson.clp 	crimson3   "  ?id "  wejZa_lAla_raMga_meM_raMga )" crlf))
)

;"crimson","VT","1.wejZa_lAla_raMga_meM_raMganA"
;The children crimsoned the pale white wall.
;

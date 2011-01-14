
(defrule infinitesimal0
(declare (salience 5000))
(id-root ?id infinitesimal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awi_sUkRma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infinitesimal.clp 	infinitesimal0   "  ?id "  awi_sUkRma )" crlf))
)

;"infinitesimal","Adj","1.awi_sUkRma"
(defrule infinitesimal1
(declare (salience 4900))
(id-root ?id infinitesimal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awi_sUkRma_rASi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infinitesimal.clp 	infinitesimal1   "  ?id "  awi_sUkRma_rASi )" crlf))
)

;"infinitesimal","N","1.awi_sUkRma_rASi"

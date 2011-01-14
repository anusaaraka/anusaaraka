
(defrule astride0
(declare (salience 5000))
(id-root ?id astride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzva_PElAkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  astride.clp 	astride0   "  ?id "  pAzva_PElAkara )" crlf))
)

;"astride","Adj","1.pAzva_PElAkara"
;He was sitting astride on the motorcycle.
;
(defrule astride1
(declare (salience 4900))
(id-root ?id astride)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xono_waraPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  astride.clp 	astride1   "  ?id "  xono_waraPa )" crlf))
)

;"astride","Prep","1.xono_waraPa"
;There are green fields astride the road.
;

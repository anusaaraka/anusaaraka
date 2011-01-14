
(defrule pastel0
(declare (salience 5000))
(id-root ?id pastel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halkA_PIkA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pastel.clp 	pastel0   "  ?id "  halkA_PIkA_raMga )" crlf))
)

;"pastel","Adj","1.halkA_PIkA_raMga"
;She likes to wear pastel shades.
;
(defrule pastel1
(declare (salience 4900))
(id-root ?id pastel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pestala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pastel.clp 	pastel1   "  ?id "  pestala )" crlf))
)

;"pastel","N","1.pestala{raMgIna_reKA_ciwra_banAne_ke_lie_cAka}"
;She bought a box of pastels for making sketches.
;

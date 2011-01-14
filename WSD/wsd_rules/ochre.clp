
(defrule ochre0
(declare (salience 5000))
(id-root ?id ochre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ochre.clp 	ochre0   "  ?id "  BagavA )" crlf))
)

;"ochre","Adj","1.BagavA"
;I like ochre.
;
(defrule ochre1
(declare (salience 4900))
(id-root ?id ochre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ochre.clp 	ochre1   "  ?id "  BagavA )" crlf))
)

;"ochre","N","1.BagavA"
;It was an ochre flog.
;--"2.lAla_pIlI_mittI_jisase_raMga_banAye_jA_sakaweM_hE"
;The soil is ochre rich.
;

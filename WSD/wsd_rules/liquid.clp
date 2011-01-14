
(defrule liquid0
(declare (salience 5000))
(id-root ?id liquid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xrava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liquid.clp 	liquid0   "  ?id "  xrava )" crlf))
)

;"liquid","Adj","1.xrava"
;Use liquid soap as a face wash..
;--"2.spaRta_Ora_svacCa"
;Liquid blue eyes.
;--"3.nakaxa"
;Bonds issued by the government are liquid assets.
;
(defrule liquid1
(declare (salience 4900))
(id-root ?id liquid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xrava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liquid.clp 	liquid1   "  ?id "  xrava )" crlf))
)

;"liquid","N","1.xrava"
;Pour the liquid into another beaker.
;

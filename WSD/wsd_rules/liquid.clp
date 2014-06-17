
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

;@@@--- Added by Nandini(1-5-14)
;I hear the liquid song of a blackbird. [OLAD]
;mEM SyAmApakRI kA spaSta gAnA sunawA hUz.
(defrule liquid2
(declare (salience 5050))
(id-root ?id liquid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 song)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaSta_pravahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liquid.clp 	liquid2   "  ?id "  spaSta_pravahI )" crlf))
)

;@@@--- Added by Nandini(1-5-14)
;Her liquid blue eyes attracted me.[OLAD]
;usakI svacCa nIlI AzKoM ne muJe AkarRiwa kiyA.
(defrule liquid3
(declare (salience 5050))
(id-root ?id liquid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 eye)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svacCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liquid.clp 	liquid3   "  ?id "  svacCa)" crlf))
)

;@@@--- Added by Nandini(1-5-14)
;Bonds issued by the government are liquid assets.[from clp]
;sarakAra se jArI kie hue prawijFA pawra nagaxa parisampwwi hEM.
(defrule liquid4
(declare (salience 5050))
(id-root ?id liquid)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 assets)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nagaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liquid.clp 	liquid4   "  ?id "  nagaxa)" crlf))
)

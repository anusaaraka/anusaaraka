
(defrule crawl0
(declare (salience 5000))
(id-root ?id crawl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMganA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crawl.clp 	crawl0   "  ?id "  reMganA )" crlf))
)

;"crawl","N","1.reMganA/XImI_cAla"
;The traffic advanced at a crawl
;A crawl was all that the injured man could manage
;
(defrule crawl1
(declare (salience 4900))
(id-root ?id crawl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crawl.clp 	crawl1   "  ?id "  reMga )" crlf))
)

;"crawl","VI","1.reMganA/XIre_XIre_calanA/GasItawe_calanA"
;The crocodile was crawling along the riverbed
;The wounded soldier crawled into a bunker. 
;--"2.reMgane_vAlI_cIjoM_se_BarA_honA"
;The child's hair was crawing with lice. 
;The old cheese was crawling with maggots
;European children learn the breast stroke;they often don't know how to crawl
;

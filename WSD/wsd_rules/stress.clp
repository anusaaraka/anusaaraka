
(defrule stress0
(declare (salience 5000))
(id-root ?id stress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stressed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xabAva_se_pIdiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stress.clp  	stress0   "  ?id "  xabAva_se_pIdiwa )" crlf))
)

;"stressed","Adj","1.xabAva se pIdiwa"
;Students feel stressed under heavy pressure of work.
;$$$ Modified by jagriti(3.4.2014)...default meaning wanAva instead of  balAGAwa
;According to the sources, Rajaram Pandey was under continuous stress after being removed from the post of Minister.
;सूत्रों के हवाले से आ रही खबर के मुताबिक, राजाराम मंत्री पद से हटाए जाने के बाद से तनाव में रहते थे।
(defrule stress1
(declare (salience 100))
(id-root ?id stress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wanAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stress.clp 	stress1   "  ?id "  wanAva )" crlf))
)

;"stress","N","1.balAGAwa"
;--"2.bala"
;She put stress on the need of extra security in the border areas.
;--"3.xabAva"
;Due to long working hours Ramu is always under stress.
(defrule stress2
(declare (salience 100))
(id-root ?id stress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stress.clp 	stress2   "  ?id "  bala_xe )" crlf))
)

;"stress","V","1.bala_xenA"
;India should stress more on providing employment.
;

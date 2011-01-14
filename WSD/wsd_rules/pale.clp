
(defrule pale0
(declare (salience 5000))
(id-root ?id pale)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id paling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bADZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pale.clp  	pale0   "  ?id "  bADZa )" crlf))
)

;"paling","N","1.bADZa/bAdZA"
;She has put a row of white palings around her house. 
;usane apane Gara ke Asa pAsa saPZexa bADZa kI sIXI reKA raKI hE.	
;
(defrule pale1
(declare (salience 4900))
(id-root ?id pale)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pale.clp 	pale1   "  ?id "  PIkA )" crlf))
)

;"pale","Adj","1.PIkA"
;Her face turned pale on hearing the news.
;yaha Kabara sunakara usakA ceharA PIkA ho gayA. 
;
(defrule pale2
(declare (salience 4800))
(id-root ?id pale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pale.clp 	pale2   "  ?id "  bAdZA )" crlf))
)

;"pale","N","1.bAdZA/KUztA/GerA"
;They have made a pale with barbed wire.
;unhoMne kAztexAra wAra se bAdZA banAyA hE.
;
(defrule pale3
(declare (salience 4700))
(id-root ?id pale)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIkA_padZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pale.clp 	pale3   "  ?id "  PIkA_padZa_jA )" crlf))
)

(defrule pale4
(declare (salience 4600))
(id-root ?id pale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIkA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pale.clp 	pale4   "  ?id "  PIkA_kara_xe )" crlf))
)

;"pale","VI","1.PIkA_padZa_jAnA[kara_xenA]"
;She paled with the shock of this news.
;isa Kabara ke saxame se vaha pIlI padZa gayI.
;yaha rahasyoxGAtana usakA ceharA PIkA_kara_xegA.
;

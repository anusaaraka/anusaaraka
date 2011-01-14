



;Added by Meena(16.11.10)
(defrule develop00
(declare (salience 5000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id developing )
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikAsaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  develop.clp    develop00   "  ?id "  vikAsaSIla )" crlf))
)



(defrule develop0
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id developing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikAsaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  develop.clp  	develop0   "  ?id "  vikAsaSIla )" crlf))
)




;"developing","Adj","1.vikAsaSIla"
;India is a developing country.
(defrule develop1
(declare (salience 4900))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id developed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikasiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  develop.clp  	develop1   "  ?id "  vikasiwa )" crlf))
)

;"developed","Adj","1.vikasiwa"
;The USA is a developed country.
;
;
(defrule develop2
(declare (salience 4800))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikAsa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  develop.clp 	develop2   "  ?id "  vikAsa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  develop.clp   develop2   "  ?id " kA )" crlf)
)
)

;default_sense && category=verb	vikasiwa_kara	0
;"develop","VT","1.vikasiwa_karanA"
;Her company developed a new kind of building material that withstands all kinds of weather.
;
;

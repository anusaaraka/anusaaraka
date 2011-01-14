
(defrule overcrowd0
(declare (salience 5000))
(id-root ?id overcrowd)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id overcrowding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BIdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  overcrowd.clp  	overcrowd0   "  ?id "  BIdZa )" crlf))
)

;"overcrowding","N","1.BIdZa"
;Arrangements have been made to check overcrowding in the Kumbh festival
;
(defrule overcrowd1
(declare (salience 4900))
(id-root ?id overcrowd)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id overcrowded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BIdZa-BarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  overcrowd.clp  	overcrowd1   "  ?id "  BIdZa-BarA )" crlf))
)

;"overcrowded","Adj","1.BIdZa-BarA"
;They got into a overcrowded bus
;
;
;

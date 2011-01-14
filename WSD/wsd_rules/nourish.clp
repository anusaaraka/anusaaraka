
(defrule nourish0
(declare (salience 5000))
(id-root ?id nourish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id nourishing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id puRtikAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  nourish.clp  	nourish0   "  ?id "  puRtikAraka )" crlf))
)

;"nourishing","Adj","1.puRtikAraka"
;We must take nourishing food.
;
(defrule nourish1
(declare (salience 4900))
(id-root ?id nourish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nourish.clp 	nourish1   "  ?id "  pAlana )" crlf))
)

;"nourish","VT","1.pAlana_/poRaNa_karanA"
;Good food,education && good environment play a vital role to nourish our.
;children.
;--"2.baDAvA_xenA"
;He nourished my wish to write a book.
;
;
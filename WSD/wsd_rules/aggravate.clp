
(defrule aggravate0
(declare (salience 5000))
(id-root ?id aggravate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id aggravating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwwejaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  aggravate.clp  	aggravate0   "  ?id "  uwwejaka )" crlf))
)

;"aggravating","Adj","1.uwwejaka"
;Some of his aggravating remarks annoy me.
;
(defrule aggravate1
(declare (salience 4900))
(id-root ?id aggravate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aggravate.clp 	aggravate1   "  ?id "  uwwejiwa_kara )" crlf))
)

;"aggravate","VT","1.uwwejiwa_karanA"
;The problem is aggravated by a lack of understanding.
;--"2.kroXiwa_karanA"
;Some of his remarks aggravate me.
;
;

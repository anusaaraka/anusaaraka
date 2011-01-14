
(defrule verse0
(declare (salience 5000))
(id-root ?id verse)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id versed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nipuNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  verse.clp  	verse0   "  ?id "  nipuNa )" crlf))
)

;"versed","Adj","1.nipuNa"
;Kalidasa was versed in similies
;
(defrule verse1
(declare (salience 4900))
(id-root ?id verse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaviwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  verse.clp 	verse1   "  ?id "  kaviwA )" crlf))
)

;"verse","N","1.kaviwA"
;Milton's verses are well known
;
;
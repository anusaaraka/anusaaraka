
(defrule proportion0
(declare (salience 5000))
(id-root ?id proportion)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id proportioned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samAnupAwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  proportion.clp  	proportion0   "  ?id "  samAnupAwika )" crlf))
)

;"proportioned","Adj","1.samAnupAwika"
;We are living in a well proportioned room.
;
(defrule proportion1
(declare (salience 4900))
(id-root ?id proportion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAnupAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proportion.clp 	proportion1   "  ?id "  samAnupAwa )" crlf))
)

;default_sense && category=noun	aMSa	0
;"proportion","N","1.aMSa"
;The proportion of water && acid should be equal.
;
;
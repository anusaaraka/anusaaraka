
(defrule heart0
(declare (salience 5000))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hearted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BAvanAoM_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  heart.clp  	heart0   "  ?id "  BAvanAoM_vAlA )" crlf))
)

;"hearted","Adj","1.BAvanAoM_vAlA"
;Harishchandra was a kindhearted person.
;hariScanxra xayAlu BAvanAoM vAle We.
;
(defrule heart1
(declare (salience 4900))
(id-root ?id heart)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hqxaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heart.clp 	heart1   "  ?id "  hqxaya )" crlf))
)

;"heart","N","1.hraxaya"
;usakA"heart" kamajora hE isalie use aspawAla meM BarwI kiyAgayA.
;
;

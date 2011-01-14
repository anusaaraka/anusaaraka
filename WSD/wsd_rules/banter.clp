
(defrule banter0
(declare (salience 5000))
(id-root ?id banter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bantering )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xillagI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  banter.clp  	banter0   "  ?id "  xillagI_kara )" crlf))
)

;"bantering","V","1.xillagI_karanA"
;We saw officers && subordinates bantering with each other.
;
(defrule banter1
(declare (salience 4900))
(id-root ?id banter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  banter.clp 	banter1   "  ?id "  hAsya )" crlf))
)

;"banter","N","1.hAsya/upahAsa"
;We saw the traditional banter between officers && subordinates on Labour Day.
;
;


(defrule amuse0
(declare (salience 5000))
(id-root ?id amuse)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id amusing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vinoxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  amuse.clp  	amuse0   "  ?id "  vinoxI )" crlf))
)

;"amusing","Adj","1.vinoxI/manoraMjaka"
;My grandfather told me an amusing story.
;
(defrule amuse1
(declare (salience 4900))
(id-root ?id amuse)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id amused )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KuSa_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  amuse.clp  	amuse1   "  ?id "  KuSa_hue )" crlf))
)

;"amused","Adj","1.KuSa hue"
;The hostess gave an amused smile to all the guests.
;
;
(defrule amuse2
(declare (salience 4800))
(id-root ?id amuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoraMjana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amuse.clp 	amuse2   "  ?id "  manoraMjana_kara )" crlf))
)

;"amuse","VT","1.manoraMjana_karanA"
;Toys that run on batteries amuse children.
;


(defrule list0
(declare (salience 5000))
(id-root ?id list)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id listing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sUcI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  list.clp  	list0   "  ?id "  sUcI )" crlf))
)

;"listing","N","1.sUcI"
;This is complete listing of our models.
;
(defrule list1
(declare (salience 4900))
(id-root ?id list)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  list.clp 	list1   "  ?id "  sUcI )" crlf))
)

;"list","N","1.sUcI"
;A list of books.
;
(defrule list2
(declare (salience 4800))
(id-root ?id list)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcIbaxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  list.clp 	list2   "  ?id "  sUcIbaxXa_kara )" crlf))
)

;"list","V","1.sUcIbaxXa_karanA"
;List all the contents of this bag.
;--"2.JukanA"
;The damaged boat was listing.
;

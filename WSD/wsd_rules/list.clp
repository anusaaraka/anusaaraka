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

;@@@--- Added by Nandini(1-5-14)
;The damaged boat was listing in the sea. [from clp]
;kRawigraswa nAva samuxra meM Juka rahI WI.
(defrule list3
(declare (salience 4850))
(id-root ?id list)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 boat|ship|ferry)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  list.clp 	list3   "  ?id "  Juka )" crlf))
)

;@@@--- Added by Nandini(1-5-14)
;As a ferry carrying 476 people was badly listing off the southwestern coast of South Korea two weeks ago[NDTV news]
;xo sapwAha pahale eka badI nAva jo 476 logoM ko south koriyA ke  xakRiNa-paScimI samuxra wata se le jA rahI WI burI waraha se JukI huI WI.
(defrule list4
(declare (salience 4850))
(id-root ?id list)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " list.clp	list4  "  ?id "  " ?id1 "   Juka )" crlf))
)


;"list","V","1.sUcIbaxXa_karanA"
;List all the contents of this bag.
;--"2.JukanA"
;The damaged boat was listing.
;

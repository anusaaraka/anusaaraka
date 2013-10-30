
(defrule book0
(declare (salience 5000))
(id-root ?id book)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " book.clp	book0  "  ?id "  " ?id1 "  liKa  )" crlf))
)

(defrule book1
(declare (salience 4900))
(id-root ?id book)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " book.clp	book1  "  ?id "  " ?id1 "  liKa  )" crlf))
)

(defrule book2
(declare (salience 4800))
(id-root ?id book)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puswaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  book.clp 	book2   "  ?id "  puswaka )" crlf))
)

;"book","N","1.puswaka/kiwAba"
;I am reading a good book on economics
;He used a large book as a doorstop
;They got a subpoena to examine our books
;The book of Isaiah
;He bought a new daybook
;He bought a book of stamps
;
(defrule book3
(declare (salience 4700))
(id-root ?id book)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 case)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  book.clp 	book3   "  ?id "  xarja_kara )" crlf))
)

(defrule book4
(declare (salience 4600))
(id-root ?id book)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  book.clp 	book4   "  ?id "  buka_kara )" crlf))
)

;"book","VT","1.buka_karanA"
;Her agent had booked her for several concerts in Tokyo
;The policeman booked her when she tried to solicit a man
;
;LEVEL 
;Headword : book
;
;Examples --
;
;"book","N","1.puswaka/kiwAba"  -leKana_sAmagrI(granWa)
;I am reading a good book on economics
;mEM arWaSAswra para eka acCI puswaka paDZa rahI hUz.
;He used a large book as a doorstop
;usane eka badZI kiwAba ko dorastOYpara jEse iswamAla kiyA.
;--"2.bahI"
;They got a subpoena to examine our books
;vaha hamArI bahI kI jAz karane kA sammana le kara Ae.
;--"3.graMWa"
;The book of Isaiah
;IsAiyA ke graMWa
;--"4.dAyarI'
;He bought a new daybook
;usane eka nayI dAyarI KarIxI
;He bought a book of stamps
;usane eka tikata-puswikA KarIxI
;
;"book","VT","1.buka_karanA"   -puswaka/sUcI_meM_liKanA<--nAma_xarjZa_karanA
;Her agent had booked her for several concerts in Tokyo
;usake ajeMta ne usako tokiyo meM kaI kaMsartoM ke liye buka_kiyA WA.
;The policeman booked her when she tried to solicit a man
;jaba vaha eka puruRa ko PazsA rahI WI wo pulisa ne use buka_kara_liyA.
;         
;sUwra : puswaka[>liKanA{puswaka_meM}]
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;


(defrule title0
(declare (salience 5000))
(id-root ?id title)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id titled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBijAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  title.clp  	title0   "  ?id "  aBijAwa )" crlf))
)

;"titled","Adj","1.aBijAwa"
;He is a titled king.
;
(defrule title1
(declare (salience 4900))
(id-root ?id title)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  title.clp 	title1   "  ?id "  nAma )" crlf))
)

;"title","N","1.nAma"
;He looked for books with the word `jazz' in the title.
;--"2.SIrRaka"
;The novel has a very catchy title.
;--"3.upAXi"
;He held the title for two years.
;`Your majesty' is the appropriate title to use in addressing a king.
;--"4.mAnopAXi"
;Professor didn't like his friends to use his formal title.
;--"5.siranAmA"
;The titles go by faster than I can read.
;
(defrule title2
(declare (salience 4800))
(id-root ?id title)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnopAXi_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  title.clp 	title2   "  ?id "  mAnopAXi_mila )" crlf))
)

;"title","V","1.mAnopAXi_milanA"
;Ashoka was titled as'Ashoka the great'
;


(defrule gild0
(declare (salience 5000))
(id-root ?id gild)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gilding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paxArWa_jisase_kalaI_kI_jAwI_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  gild.clp  	gild0   "  ?id "  paxArWa_jisase_kalaI_kI_jAwI_hE )" crlf))
)

;"gilding","N","1.paxArWa_jisase_kalaI_kI_jAwI_hE"
;The guilding on the dome of the gurudwara in Amritsar is of gold.
;
(defrule gild1
(declare (salience 4900))
(id-root ?id gild)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gilded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ucca_varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  gild.clp  	gild1   "  ?id "  ucca_varga )" crlf))
)

;"gilded","Adj","1.ucca_varga"
;There is wide gap between the low && gilded in our society.
;
;
(defrule gild2
(declare (salience 4800))
(id-root ?id gild)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gild.clp 	gild2   "  ?id "  kalaI_kara )" crlf))
)

;"gild","V","1.kalaI_karanA"
;The bangles are gilded.
;
;

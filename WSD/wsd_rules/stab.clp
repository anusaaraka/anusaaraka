
(defrule stab0
(declare (salience 5000))
(id-root ?id stab)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stabbing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id CurA_prahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stab.clp  	stab0   "  ?id "  CurA_prahAra )" crlf))
)

;"stabbing","Adj","1.CurA prahAra"
;He felt a stabbing pain in his heart.
;
(defrule stab1
(declare (salience 4900))
(id-root ?id stab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stab.clp 	stab1   "  ?id "  GAva )" crlf))
)

;"stab","N","1.GAva"
;He's got stab wounds all over his chest.
;--"2.xarxa"
;A stab of pain in his head.
;--"3.koSiSa"
;He made a good stab in the badminton tournament.
;
(defrule stab2
(declare (salience 4800))
(id-root ?id stab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stab.clp 	stab2   "  ?id "  prahAra_kara )" crlf))
)

;"stab","V","1.prahAra_karanA"
;He stabbe him in the stomach.
;

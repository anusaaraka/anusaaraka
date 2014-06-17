;$$$  Modified by Preeti(9-5-14)
;Are you accusing me of being a cheat? [Oxford Advanced Learner's Dictionary]
;kyA Apa muJapara Taga hone kA  Aropa_lagA rahe hEM?
(defrule cheat0
;(declare (salience 5000));salience changed
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat0   "  ?id "  Taga )" crlf))
)

;"cheat","N","1.Taga"
;He is a cheat.
;
;$$$  Modified by Preeti(9-5-14)
;I had to cheat in order to solve the puzzle. [merriam-webster.com]
;pahelI ko hala karane ke liye muJe beImAnI karanI padI.
;He cheats at cards. [Cambridge Learner’s Dictionary]
;vaha wASa meM beImAnI karawA hE.
(defrule cheat1
;(declare (salience 4900));salience changed
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beImAnI_kara));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat1   "  ?id "  beImAnI_kara )" crlf))
)

;@@@ Added by Preeti(9-5-14)
;He is cheating on his wife. [Oxford Advanced Learner's Dictionary]
;vaha apanI pawnI ke alAvA nAjAyaja_saMbaMXa_raKa rahA hE.
(defrule cheat2
(declare (salience 1050))
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAjAyaja_saMbaMXa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat2   "  ?id "  nAjAyaja_saMbaMXa_raKa )" crlf))
)


;@@@ Added by Preeti(9-5-14)
;She was caught cheating in her French exam. [Cambridge Learner’s Dictionary]
;vaha apanI PrAMsIsI parIkRA meM nakala karawI huI pakadI gayI WI.
(defrule cheat3
(declare (salience 1000))
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat3   "  ?id "  nakala_kara )" crlf))
)

;parser problem
;@@@ Added by Preeti(9-5-14)
;They cheated him out of his share of the profits. [merriam-webster.com]
;unhoMne lABa meM usake Seyara se usako vanciwa kiyA.
(defrule cheat4
(declare (salience 1050))
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI  ?id ?)
(id-root ?id1 out)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vanciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat4   "  ?id "   "  ?id1 " vanciwa_kara )" crlf))
)

;@@@ Added by Preeti(9-5-14)
;It is really a cheat, but you can use ready-made pastry if you want. [Oxford Advanced Learner's Dictionary]
;yaha vAswava meM XoKA hE, paranwu Apa wEyAra pestrI kA upayoga_kara sakawe hEM yaxi Apa cAhawe hEM.
(defrule cheat5
(declare (salience 1000))
(id-root ?id cheat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheat.clp 	cheat5   "  ?id "  XoKA )" crlf))
)



;parser problem
;The players were accused of cheating.
;Anyone caught cheating will be automatically disqualified from the examination.
;Many people feel cheated by the government's refusal to hold a referendum.
;You little cheat!



;"cheat","V","1.kapata_karanA"
;He cheated his friend that cost him his life.
;

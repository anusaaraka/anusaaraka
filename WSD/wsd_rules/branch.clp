;@@@ Added by Garima Singh(M.tech-C.S,Banasthali vidyapith)21-Feb-2014 
;The company branched out into selling insurance.[oald]
;कम्पनी ने बीमा बेचने की शाखा खोली है 
(defrule branch2
(declare (salience 5000))
(id-root ?id branch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(id-word =(+ ?id1 1) into)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 (+ ?id1 1) kI_SAKA_Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " branch.clp 	branch2  "  ?id "  " ?id1 " "(+ ?id1 1)" kI_SAKA_Kola )" crlf))
)

;@@@ Added by Garima Singh(M.tech-C.S,Banasthali vidyapith)21-Feb-2014 
;Just after the lake, the path branches off to the right.[oald]
;झील के तुरन्त बाद, पथ दाँयी ओर मुड़ जाता है
(defrule branch3
(declare (salience 5000))
(id-root ?id branch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " branch.clp 	branch3  "  ?id "  " ?id1 "  mudZa )" crlf))
)


;@@@ Added by Garima Singh(M.tech-C.S,Banasthali vidyapith)21-Feb-2014 
;I decided to branch out on my own.[oald]
;मैंने स्व्यं ही अलग होने का फैसला किया . 
(defrule branch4
(declare (salience 5000))
(id-root ?id branch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(to-infinitive  ? ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 alaga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " branch.clp 	branch4  "  ?id "  " ?id1 "  alaga_ho )" crlf))
)

;******************DEFAULT RULES***************************

(defrule branch0
(declare (salience 5000))
(id-root ?id branch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  branch.clp 	branch0   "  ?id "  SAKA )" crlf))
)

(defrule branch1
(declare (salience 4900))
(id-root ?id branch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAjiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  branch.clp 	branch1   "  ?id "  viBAjiwa_ho )" crlf))
)

;"branch","V","1.viBAjiwa_honA"
;This road branches off into three lanes after two kilometers.
;
;LEVEL 
;Headword : branch
;
;***************Examples***************************
;"branch","N","1.SAKA"
;Ripe apples hung from the branches of the tree.
;pedZa kI SAKAoM para pake pedZa lataka rahe We.
;A branch of Congress.
;kAMgresa kI SAKA.
;He broke off one of the branches.
;usane eka SAKA wodZa lI.
;
;"branch","V","1.viBAjiwa_honA"
;This road branches off into three lanes after two kilometers.
;yaha sadZaka xo kilomItara bAxa wIna galiyoM meM (SAKAoM meM)viBAjiwa howI hE.
;
;sUwra : SAKA`

;The company branched out into selling insurance.
;I decided to branch out on my own.
;Just after the lake, the path branches off to the right.
;The accident happened where the road branches.

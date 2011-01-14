
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
;Examples --
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

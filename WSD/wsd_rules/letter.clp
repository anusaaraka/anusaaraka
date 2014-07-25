
(defrule letter0
(declare (salience 5000))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lettering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id leKana-prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  letter.clp  	letter0   "  ?id "  leKana-prakriyA )" crlf))
)

;"lettering","N","1.leKana-prakriyA"
;@@@ Added by Nandini(8-1-14)  
;He produced a letter from his pocket.  E.S. added by Nandini
;usane usakI jeba se pawra nikAlA.       H.S. added by Nandini
;added 'write' in the list by Nandini (20-1-14)
(defrule letter1
(declare (salience 4980))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id) ;added by Nandini
(id-root ?id1 produce|send|write|answer|reply|open|receive); added 'receive' to the list by Nandini :; added 'answer|reply|open' by Roja (03-05-14). Suggested by Chaitanya Sir. Ex: She reproached me for not answering the letter. Ex: Excuse me for opening your letter by mistake.
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  letter.clp 	letter1   "  ?id "  pawra )" crlf))
)

;Added by sheetal
;Please enclose a curriculum vitae with your letter of application .
(defrule letter2
(declare (salience 4950))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  application)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  letter.clp    letter2   "  ?id "  Avexana_pawra )" crlf))
)

;@@@ Added by Nandini(11-1-2014)
;I have made a rough draft of the letter.[via mail]
;mEM pawra kA eka drAPta banA cukA hUz.
(defrule letter4
(declare (salience 4980))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 draft)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  letter.clp 	letter4   "  ?id "  pawra )" crlf))
)

;$$$ Modified by Nandini(2-1-2014)  -- changed meaning from 'pawra' to 'akRara'
;She learned to write her name by tracing out the letters.[Cambridge Advanced Learner’s Dictionary]
;usane apanA nAma akRara anureKana kara liKanA sIKA.
(defrule letter3
(declare (salience 4900))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 trace)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akRara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  letter.clp 	letter3   "  ?id "  akRara )" crlf))
)

;----------------- Default rule ---------------------

;@@@ Added by Nandini (11-2-14)
;Your letter got buried under a pile of papers.    [ source- oald] 
;आपका अक्षर कागजों के ढेर के नीचे दबा गया .
(defrule letter5
(declare (salience 4850))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  letter.clp 	letter5   "  ?id "  pawra )" crlf))
)




;"letter","N","1.pawra[akRara]"
;--"2.akRara"
;Letters of alphabet. 
;--"3.pawra"
;I have received your letter.
;

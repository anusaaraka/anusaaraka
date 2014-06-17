
(defrule puzzle0
(declare (salience 5000))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUZZzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puzzle.clp	puzzle0  "  ?id "  " ?id1 "  DUZZzDa  )" crlf))
)

;She managed to puzzle out the solution.
;usane hala ko DUzDZa nikAlA
(defrule puzzle1
(declare (salience 4900))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUZZzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puzzle.clp	puzzle1  "  ?id "  " ?id1 "  DUZZzDa  )" crlf))
)

;She puzzled over the solution for hours.
;usane GaMtoM waka isa guwWI kA hala DUzzDZA

;$$$ Modified mng from 'para_vicAra_kara' to 'jUJawA_rahA' by Sonam Gupta MTech IT Banasthali 2013
;For, right from, the earliest times, man has puzzled over these questions and tried to work out logical answers to them. [Gyan nidhi]
;सबसे अधिक शुरू शुरू  समय से, आदमी इन प्रश्नों में जूझता रहा है और उनको तार्किक उत्तर हल करने का प्रयास कर चुका है . 
(defrule puzzle2
(declare (salience 4800))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jUJawA_rahA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " puzzle.clp puzzle2 " ?id "  jUJawA_rahA )" crlf)) 
)

(defrule puzzle3
(declare (salience 4700))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puzzle.clp	puzzle3  "  ?id "  " ?id1 "  para_vicAra_kara  )" crlf))
)

(defrule puzzle4
(declare (salience 4600))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahelI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puzzle.clp 	puzzle4   "  ?id "  pahelI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;A curious and puzzling feature about galaxies is that, whether singly or in clusters, they seem to contain a lot more say, 
;ten times more unseen matter in and around them than is visible through stars, gas and dust.  [Gyan nidhi]
;तारा समूहों के बारे में एक जिज्ञासु और हैरान करने वाली विशेषता है चाहे अकेले ही या गुच्छों में, कि उनमें में कहने के लिये बहुत कुछ है, 
;उनमें अौर उनके आस पास दस गुने अधिक अदृश्य द्रव्य है जो कि तारो, गैस और धूल के माध्यम से स्पष्ट है .
(defrule puzzle5
(declare (salience 4500))
(id-root ?id puzzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hErAna_karane_vAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puzzle.clp 	puzzle5   "  ?id "  hErAna_karane_vAlI )" crlf))
)

;default_sense && category=noun	samasyA	0
;"puzzle","N","1.samasyA"
;We spent the whole day solving crossword puzzles.
;
;

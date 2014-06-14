;"touched","Adj","1.praBAviwa_honA"
;She was deeply touched by his sad story.
;
(defrule touch0
(declare (salience 5000))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " touch.clp touch0 " ?id "  TIka_kara )" crlf)) 
)

(defrule touch1
(declare (salience 4900))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TIka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " touch.clp	touch1  "  ?id "  " ?id1 "  TIka_kara  )" crlf))
)

(defrule touch2
(declare (salience 4800))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id touched )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAviwa_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  touch.clp  	touch2   "  ?id "  praBAviwa_honA )" crlf))
)

(defrule touch3
(declare (salience 4700))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touch.clp 	touch3   "  ?id "  sparSa_kara )" crlf))
)

;default_sense && category=verb	sparSa_kara	0
;"touch","VTI","1.sparSa_kara"
;The two creepers are touching each other.
;--"2.CUnA"
;Touch the floor.
;He is the best actor.No one can touch him.
;The water touched the danger mark .
;Whatver Midas touched became gold.
;--"3.halakI_kRawi_pahuzcAnA"
;The museum was not touched by the fire.
;--"4.asara_karanA"
;The news of his father's death touched him deeply.
;
(defrule touch4
(declare (salience 4600))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id touching )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id karuNAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  touch.clp  	touch4   "  ?id "  karuNAwmaka )" crlf))
)

;"touching","Adj","1.karuNAwmaka"
;Charles Dickens stories are touching.
;
(defrule touch5
(declare (salience 4500))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " touch.clp touch5 " ?id "  TIka_kara )" crlf)) 
)

(defrule touch6
(declare (salience 4400))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TIka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " touch.clp	touch6  "  ?id "  " ?id1 "  TIka_kara  )" crlf))
)

(defrule touch7
(declare (salience 4300))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touch.clp 	touch7   "  ?id "  sparSa_kara )" crlf))
)

;default_sense && category=verb	sparSa_kara	0
;"touch","VTI","1.sparSa_kara"
;The two creepers are touching each other.
;--"2.CUnA"
;Touch the floor.
;He is the best actor.No one can touch him.
;The water touched the danger mark .
;Whatver Midas touched became gold.
;--"3.halakI_kRawi_pahuzcAnA"
;The museum was not touched by the fire.
;--"4.asara_karanA"
;The news of his father's death touched him deeply.
;
;


;@@@ Added by Prachi Rathore[28-1-14]
;She played the piano with a light touch.[oald]
;उसने एक हल्के स्पर्श के साथ पियानो बजाया. 
(defrule touch8
(declare (salience 4300))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touch.clp 	touch8   "  ?id "  sparSa )" crlf))
)


;@@@ Added by Prachi Rathore[28-1-14]
;There was a touch of sarcasm in her voice.[oald]
;उसकी आवाज में व्यङ्ग्योक्ति का भाव था . 
(defrule touch9
(declare (salience 5000))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touch.clp 	touch9   "  ?id "  BAva )" crlf))
)

;@@@ Added by Prachi Rathore[28-1-14]
;The gentle touch of his hand on her shoulder made her jump.[oald]
;उसके कन्धे पर उसके हाथ के हल्के स्पर्श से वह कूद पड़ी . 
(defrule touch10
(declare (salience 5050))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touch.clp 	touch10   "  ?id "  sparSa )" crlf))
)

;@@@ Added by Prachi Rathore[28-1-14]
;He put the finishing touches to his painting.[oald]
;उसने उसकी कलाकृति को अंतिम रूप दिया.
(defrule touch11
(declare (salience 5000))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 final|finish|decorative|professional)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touch.clp 	touch11   "  ?id "  rUpa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_touch11
(declare (salience 5000))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 final|finish|decorative|professional)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " touch.clp   sub_samA_touch11   "   ?id " rUpa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_touch11
(declare (salience 5000))
(id-root ?id touch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 final|finish|decorative|professional)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " touch.clp   obj_samA_touch11   "   ?id " rUpa )" crlf))
)

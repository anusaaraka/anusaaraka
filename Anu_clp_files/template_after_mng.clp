;This file is added by Shirisha Manju 13-05-14

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;You liar! You stupid! You thief! You idiot!
(defrule add_extra_word
(hindi_id_order $? ?you ?id $?)
(id-word ?you you)
(id-word ?id liar|stupid|thief|idiot|chicken)
?f0<-(id-Apertium_output ?id $?mng)
(not (word_inserted ?id))
=>
	(retract ?f0)
	(assert (id-Apertium_output ?id $?mng kahIM ke))
	(assert (word_inserted ?id))
)

;Suggested by Chaitanya Sir (20-08-16)
;If than meaning starts with se then treat than as preposition.
;It is not less than a challenge to keep oneself healthy in today's busy life.
(defrule modify_than_se_prep
?f0<-(id-Apertium_output ?id se $?mng)
(id-word ?id than)
(pada_info (group_head_id ?h)(group_ids =(+ ?id 1) $?) )
?f1<-(id-Apertium_output ?h $?m)
=>
	(retract ?f0 ?f1)
	(assert (id-Apertium_output ?id ))
	(assert (id-Apertium_output ?h $?m se $?mng))
)
	

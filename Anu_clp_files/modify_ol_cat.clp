 (defglobal ?*ol_fp* = ol_cat_file)

 (deffacts dummy_facts 
 (using-parser-ids)
 (parserid-wordid)
 (ol_res_id-word_id-word)
 (root-verbchunk-tam-parser_chunkids)
 (current_id-group_members)
 (addition-level-word-sid)
 (split_tranlevel-ptype-headid-grpids)
 (parser_id-cat_coarse)
 )
 ;----------------------------------------------------------------------------------------------------------------
;Added by sheetal
;The girl running to the shop is my friend.
(defrule preposition_rule_1
(declare (salience 1000))
?f1<-(using-parser-ids   viSeRya-jo_samAnAXikaraNa ?L3 ?L10000)
(using-parser-ids   kriyA-subject ?L4 ?L10000)
?f<-(parser_id-cat_coarse	?L4	verbal_noun)
(ol_res_id-word_id-word ?L4    ?id     ?word)
(not (or (using-parser-ids  viSeRya-viSeRaNa  ?L3  ?)(using-parser-ids   kriyA-vAkyakarma ?L4 ?))); Added by Roja (15-11-10)
(test (eq (sub-string (- (length ?word) 2) (length ?word) ?word) "ing"))
=>
(retract ?f ?f1)
(assert (parser_id-cat_coarse ?L4 verb))
)
;----------------------------------------------------------------------------------------------------------------
;Added by sheetal
;Do not climb on the running train.
(defrule preposition_rule_2
(declare (salience 1000))
(using-parser-ids viSeRya-viSeRaNa ?L8 ?L7)
?f<-(parser_id-cat_coarse ?L7 verbal_noun)
(ol_res_id-word_id-word ?L7 ?id ?word)
(test (eq (sub-string (- (length ?word) 2) (length ?word) ?word) "ing"))
=>
(retract ?f)
(assert (parser_id-cat_coarse ?L7 verb))
)
;----------------------------------------------------------------------------------------------------------------
;He wasted his golden opportunity to play in the national team . 
(defrule preposition_rule
(declare (salience 1000))
(using-parser-ids  to-infinitive  ?id ?kri)
?f<-(parser_id-cat_coarse ?id verb)
(parser_id-cat_coarse ?kri verb)
=>
(retract ?f)
(assert (parser_id-cat_coarse ?id preposition))
)
;----------------------------------------------------------------------------------------------------------------
;Added by sheetal
;Even though catagory of "after" followed by non-finite verb should be preposition, Open Logos always marks "after" as a conjunction.To rectify that error this rule is written.
;I left the party after seeing Ann there.
(defrule preposition_rule1
(declare (salience 1001))
?f<-(parser_id-cat_coarse  ?prep conjunction)
(parser_id-cat_coarse  ?L_vn verbal_noun)
(ol_res_id-word_id-word	?prep	?id	after)
(ol_res_id-word_id-word	?L_vn	=(+ ?id 1)	?v_n)
=>
(retract ?f)
(assert (parser_id-cat_coarse ?prep preposition))
)
;----------------------------------------------------------------------------------------------------------------
;Where are you coming from?
(defrule wh-adverb_rule
(declare (salience 1000))
?f<-(parser_id-cat_coarse     ?cat    Relatives/Interrogatives)
=>
(retract ?f)
(assert (parser_id-cat_coarse ?cat    wh-adverb))
)
;----------------------------------------------------------------------------------------------------------------
;I have doubts about inviting him. We have very different ideas about disciplining children.
(defrule make_verbal_noun
(declare (salience 1000))
(root-verbchunk-tam-parser_chunkids   ? ?a verbal-noun  $?id ?v_n)
?f1<-(parser_id-cat_coarse     ?v_n  verb)
=>
(retract ?f1)
(assert (parser_id-cat_coarse ?v_n verbal_noun))
)
;----------------------------------------------------------------------------------------------------------------
;The party that night was a big success.
(defrule that_det_rule
(declare (salience 1200))
(parser_id-cat_coarse    ?Lid1  noun)
(parser_id-cat_coarse    ?Lid2  noun)
(ol_res_id-word_id-word   ?Lid  ?id   that)
(ol_res_id-word_id-word   ?Lid1 =(-  ?id 1)   ?wrd1)
(ol_res_id-word_id-word   ?Lid2 =(+  ?id 1)   ?wrd2)
?f<-(parser_id-cat_coarse     ?Lid  Relatives/Interrogatives)
=>
(retract ?f)
(assert (parser_id-cat_coarse ?Lid   determiner))
)
;----------------------------------------------------------------------------------------------------------------
;These shoes that I bought will look nice with that hat.
(defrule that_conj_rule
(declare (salience 1200))
(parser_id-cat_coarse    ?Lid1  verb|noun|PropN|adjective) 
(parser_id-cat_coarse    ?Lid2  pronoun)
(ol_res_id-word_id-word   ?Lid  ?id   that)
(ol_res_id-word_id-word   ?Lid1 =(-  ?id 1)   ?wrd1)
(ol_res_id-word_id-word   ?Lid2 =(+  ?id 1)   ?wrd2)
?f<-(parser_id-cat_coarse     ?Lid  Relatives/Interrogatives)
=>
(retract ?f)
(assert (parser_id-cat_coarse ?Lid   conjunction))
)
;----------------------------------------------------------------------------------------------------------------
;Do not disturb the sleeping kids.
(defrule verbal_noun_modify_rule
(declare (salience 1200))
(ol_res_id-word_id-word	  ?Lid	 ?id   sleeping)
(using-parser-ids  viSeRya-viSeRaNa   ?vis   ?Lid)
?f<-(parser_id-cat_coarse    ?Lid   verbal_noun)
=>
(retract ?f)
(assert (parser_id-cat_coarse   ?Lid   adjective))
)
;----------------------------------------------------------------------------------------------------------------
;His bed was next to the room's only window.
(defrule make_adj
(declare (salience 1200))
(ol_res_id-word_id-word   ?Lid   ?id   only)
(using-parser-ids  viSeRaNa-viSeRaka  ?vis   ?Lid)
?f<-(parser_id-cat_coarse    ?Lid   adverb)
=>
(retract ?f)
(assert (parser_id-cat_coarse   ?Lid   adjective))
)
;----------------------------------------------------------------------------------------------------------------
(defrule write_remaining_cat
(parser_id-cat_coarse  ?id ?cat)
=>
(printout       ?*ol_fp*    "(parser_id-cat_coarse  " ?id" " ?cat")"crlf)
)
;----------------------------------------------------------------------------------------------------------------
(defrule end
 (declare (salience -1000))
 =>
        (close ?*ol_fp*)
 )
;----------------------------------------------------------------------------------------------------------------

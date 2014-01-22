;Added by Amba
;If the objects are such that they move away from ..
;Who gave you that knife?
;Look at that man over there.
;I was living with my parents at that time.
(defrule that0
(declare (salience 5000))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id determiner)
(viSeRya-det_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that0   "  ?id "  vaha )" crlf))
)

;"that","Det","1.vaha[nirXAraka_arWa_meM]"

(defrule that1
(declare (salience 4900))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that1   "  ?id "  jo )" crlf))
)


(defrule that2
(declare (salience 4800))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-jo_samAnAXikaraNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that2   "  ?id "  jo )" crlf))
)
;The planet that we live on is of medium size .
;Added by manju
;The grammar is a device that starts from meaning information  and incrementally builds up a complete interpreted sentence. 


;"that","Pron","1.vaha"
;That's a beautiful garden.

(defrule that3
(declare (salience 4700))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that3   "  ?id "  vaha )" crlf))
)




;Added by Meena(12.5.10)
;It was in Paris that Debussy first heard Balinese music . 
(defrule that4
(declare (salience 4700))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id1 =(- ?id 1))
(kriyA-dummy_subject  ?id1  =(- ?id1 1))
(kriyA-conjunction  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp      that4   "  ?id "   jahAz )" crlf))
)



;Added by Meena(12.3.10)
;And she declared that out of love for the poor she had gotten her family to go against convention . 
(defrule that5
(declare (salience 4600))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(kriyA-conjunction  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp      that5   "  ?id "  ki )" crlf))
)





;Salience reduced by Meena(12.3.10)
(defrule that6
(declare (salience 0))
;(declare (salience 4600))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that6   "  ?id "  ki )" crlf))
)
;She said that she cannot write the exam.

;The above rules have been formulated looking at POS tagger's && chunker's output
;If these fail, then the following rules can be used.
; Rule 0
;preious word is from 'reported verb list'
(defrule that7
(declare (salience 4500))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that7   "  ?id "  ki )" crlf))
)





(defrule that8
(declare (salience 4400))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) except)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sivAya_isake_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that8   "  ?id "  sivAya_isake_ki )" crlf))
)




(defrule that9
(declare (salience 4300))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) such)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that9   "  ?id "  ki )" crlf))
)




(defrule that10
(declare (salience 4200))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) fact )
(id-word =(- ?id 2) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that10   "  ?id "  ki )" crlf))
)



(defrule that11
(declare (salience 4100))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) he|she|I|you|they|we|it|these|there|a|an|the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that11   "  ?id "  ki )" crlf))
)



(defrule that_subject
(declare (salience 4800))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-subject  ?id1 ?id) (kriyA-object  ?id1 ?id))
(not (viSeRya-jo_samAnAXikaraNa  ?vi ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp    that_subject   "  ?id "  vaha )" crlf))
)
; Is that the film in which he kills his mother. Only you would say that.`
; Added by sukhada




;They estimate that the universe contains ..
(defrule that12
(declare (salience 4000))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that12   "  ?id "  jo )" crlf))
)





(defrule that13
(declare (salience 3900))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) it|those|someone|something|anyone|anything|everyone|everything)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that13   "  ?id "  jo )" crlf))
)

; Fittest are those that survive



(defrule that14
(declare (salience 3800))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
(kriyA-object  =(- ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that14   "  ?id "  vaha )" crlf))
)




(defrule that15
(declare (salience 3700))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
(id-word =(+ ?id 1) is|was|are|were)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that15   "  ?id "  jo )" crlf))
)




(defrule that16
(declare (salience 3600))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that16   "  ?id "  ki )" crlf))
)

;She insisted that running is good for health.
;following_category=verb	jo	0
;covered by Rule 2a
;It is a living organism that can perform
(defrule that17
(declare (salience 3500))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) do|does|did|done|doing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that17   "  ?id "  vaha )" crlf))
)


;previous_category=verb	ki	0
;Already covered in Rule 0
; She said that he left without talking to her.
; We think that these people ..

(defrule that18
(declare (salience 3400))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) you|we|they|I|he|she)
(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that18   "  ?id "  jo )" crlf))
)

;$$$ Removed category 'relative_pronoun' and added 'viSeRya-jo_samAnAXikaraNa' relation by Roja(28-12-13). Suggested by Sukada.
(defrule that19
(declare (salience 3300))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-jo_samAnAXikaraNa ? ?id)
;(id-cat_coarse ?id relative_pronoun)
;(id-word =(+ ?id 1) you|we|they|I|he|she)
;(id-cat_coarse =(- ?id 1) noun)
(id-word ?id1 on|to)
(test (> ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that19   "  ?id "  jisa )" crlf))
)

; .. in everything that you do
; Counter Example: He said with certainty that it would die out in ..
(defrule that20
(declare (salience 3200))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) there|these|a|an|the)
(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that20   "  ?id "  ki )" crlf))
)

(defrule that21
(declare (salience 3100))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) pl)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that21   "  ?id "  ki )" crlf))
)

;These changes are so slow that stars seem to be ...
(defrule that22
(declare (salience 3000))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that22   "  ?id "  jo )" crlf))
)

(defrule that23
(declare (salience 2900))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
(id-word =(- ?id 2) so)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that23   "  ?id "  ki )" crlf))
)

(defrule that24
(declare (salience 2800))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
(id-word =(- ?id 2) is|was)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that24   "  ?id "  ki )" crlf))
)


(defrule that25
(declare (salience 2700))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) I|you|he|she|it|they|we|there)
(id-cat_coarse =(- ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that25   "  ?id "  jo )" crlf))
)

; There is much that we can be proud of.
; Counter ex: It would be so great that it would relase ..
; The above rule need modification.
(defrule that26
(declare (salience 2600))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) after)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that26   "  ?id "  vaha )" crlf))
)

; After that he left for office.

(defrule that27
(declare (salience 2500))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that27   "  ?id "  vaha )" crlf))
)

(defrule that28
(declare (salience 2400))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) pronoun)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that28   "  ?id "  vaha )" crlf))
)


(defrule that29
(declare (salience 2300))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
;(niReXAwmaka_vAkya      )
;(id-word =(- ?id 1) all )
(id-cat_coarse =(+ ?id 1) adverb)
(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that29   "  ?id "  uwanA )" crlf))
)

(defrule that30
(declare (salience 2200))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
;(niReXAwmaka_vAkya      )
;(id-word =(- ?id 1) all )
(id-cat_coarse =(+ ?id 1) adjective)
(viSeRaNa-viSeRaNa_viSeRaka  =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that30   "  ?id "  uwanA )" crlf))
)

(defrule that31
(declare (salience 2100))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
;(niReXAwmaka_vAkya      )
;(id-word =(- ?id 1) all )
(id-cat_coarse =(+ ?id 1) determiner) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that31   "  ?id "  uwanA )" crlf))
)

(defrule that32
(declare (salience 2000))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) many|all|some|much)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that32   "  ?id "  jo )" crlf))
)

;A small bar of chocolate was all that we had to eat.

(defrule that33
(declare (salience 1900))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that33   "  ?id "  vaha )" crlf))
)

(defrule that34
(declare (salience 1800))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that34   "  ?id "  ki )" crlf))
)

;following_word=is	jo	0
;following_word=was	jo	0
(defrule that35
(declare (salience 1700))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that35   "  ?id "  vaha )" crlf))
)

;That is a chair.
;The folliwng rule is commented.
; Reason: the 1st ex sent itself is ambiguous
;following_category=noun && following_num=sg	vaha	0
;Some think that boy did it
;Some people think that people should ..
;following_category=avy	ki	0 ?? examples
; She insisted that running is good for health  (V that V)
; I am surprised that social psychologists ...  (V that A)
(defrule that36
(declare (salience 1600))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
(kriyA-subject =(- ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that36   "  ?id "  vaha )" crlf))
)

;"that","Pron","1.vaha"
;That's a beautiful garden.
;
;
(defrule that37
(declare (salience 1500))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that37   "  ?id "  uwanA )" crlf))
)

;"that","Adv","1.uwanA"
;It wasn't that cold there.
;


;She said that she cannot write the exam.
;

;"that","Pron","1.vaha"
;That's a beautiful garden.
;
;$$$ Removed category 'relative_pronoun' and added 'viSeRya-jo_samAnAXikaraNa' relation by Roja(28-12-13). Suggested by Sukada.
(defrule that38
(declare (salience 1400))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-jo_samAnAXikaraNa ? ?id)
;(id-cat_coarse ?id relative_pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that38   "  ?id "  jo )" crlf))
)

;"that","Rel Pron","1.jo/jise"
;The watch that you gave me is very handy.
;

(defrule that39
(declare (salience 1300))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
(id-word ?id1 dog)
(kriyA-object  =(- ?id 1) ?id1)
(subject-subject_samAnAXikaraNa ?id ?)
(kriyA-subject =(- ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that39   "  ?id "  vaha )" crlf))
)

;In Chapter 4, we learned that an electric current produces magnetic field [and that] two current-carrying wires exert a magnetic force on each other.
;Prachi Rathore(M.Tech(C.S.)) BANASTHALI (12-08-13)
(defrule that40
(declare (salience 1200))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(id-root =(- ?id 1) and)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp 	that40   "  ?id "  - )" crlf))
)

;@@@ Added by Roja(24-12-13). Suggested by Chaitanya Sir.
;Conservation laws have a deep connection with symmetries of nature that you will explore in more advanced courses in physics. [NCERT Chapt-1](6th parse is correct in Stanford parser)
;प्रकृति की सममितियों का संरक्षण नियमों से गहरा सम्बन्ध है जिसके विषय में आप भौतिकी के अधिक उन्नत पाठ्यक्रम में अन्वेषण करेँगे . 
;This rule is not neccessary when 'viSeRya-jo_samAnAXikaraNa' relation is present.
(defrule that41
(declare (salience 4700))
(id-root ?id that)
?mng <-(meaning_to_be_decided ?id)
(kriyA-conjunction  ?kri ?id)
(viSeRya-viSeRaNa  ?vi ?kri)
(id-cat_coarse ?vi noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  that.clp      that41   "  ?id "  jo)" crlf))
)

;Modified by Nandini (28-10-2013)

;I could not stop laughing. [oxford advanced lerner dictionary]
;mEM hAzsI ko nahIM_roka sakA.
;We had a good laugh at his embarrassment.
;usakI zeMpa para hame acCI hAzsI AyI.
(defrule laugh0
(declare (salience 100))
(id-root ?id laugh)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laugh.clp 	laugh0   "  ?id "  hazsI )" crlf))
)

;Modified by Nandini (28-10-2013)
;Everybody laughs at my accent. [oxford advanced lerner dictionary]
;hara koI mere lahaje para hazsI_udAwA hE.
(defrule laugh1
(declare (salience 400))
(id-root ?id laugh)
?mng <-(meaning_to_be_decided ?id)
;(id-root =(+ ?id 1) at)
;(id-word ?id1 me|you|them|him)
(kriyA-at_saMbanXI  ?id ?id1)
;(kriyA-upasarga ?id ?id1)
;(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsI_udA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " laugh.clp	laugh1  "  ?id "   hazsI_udA  )" crlf))
)


;==========default-rule==========(no changes)

;The child's antics made everybody laugh.
(defrule laugh3
(declare (salience 200))
(id-root ?id laugh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laugh.clp 	laugh3   "  ?id "  hazsa )" crlf))
)
;===========Additional-examples===========
;She tried to laugh off their remarks, but I could see she was hurt. 
;If you say that, people will just laugh at you. 
;I can't go into work looking like this, everyone will laugh at me. 
;I laughed till I cried.
;It was so funny, I burst out laughing. 
;It's very rare that a book is so good you actually laugh out loud.
;She's so funny, she really makes me laugh. 
;I said he'd have to give a talk and he laughed nervously.
;I couldn't stop laughing. 
;They laughed at her jokes. 
;She keeps laughing always in the class.
;Children sometimes laugh for no reason. 
;She is not afraid to laugh at herself.
;It is easy to laugh at others but difficult to laugh at oneself.
;We had a good laugh at his embarrassment.

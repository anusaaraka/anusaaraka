;$$$  Modified by Preeti(8-5-14)
;Jane's constant chatter was beginning to annoy him. [Oxford Advanced Learner's Dictionary]
;jena kI niraMwara bakabaka ne usako pareSAna karanA Suru_kara xiyA WA.
(defrule chatter0
;(declare (salience 5000));salience changed
(id-root ?id chatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakabaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chatter.clp 	chatter0   "  ?id "  bakabaka )" crlf))
)

;$$$  Modified by Preeti(8-5-14)
;Children chattered in the middle of the playground. [merriam-webster.com]
;bacce Kelane_ke mExAna ke maXyasWala meM bakabaka kara rahe We.
(defrule chatter1
;(declare (salience 4900));salience changed
(id-root ?id chatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakabaka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chatter.clp 	chatter1   "  ?id "  bakabaka_kara )" crlf))
)

;@@@ Added by Preeti(8-5-14)
;My teeth were chattering from the cold. [merriam-webster.com]
;mere xAzwa TaNda se katakatA rahe We.
(defrule chatter2
(declare (salience 1000))
(id-root ?id chatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 tooth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katakatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chatter.clp 	chatter2   "  ?id "  katakatA )" crlf))
)

;@@@ Added by Preeti(8-5-14)
;Birds chattered in the trees. [merriam-webster.com]
;cidiyAz pedoM meM cahakIM.
(defrule chatter3
(declare (salience 1000))
(id-root ?id chatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 tree)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chatter.clp 	chatter3   "  ?id "  cahaka)" crlf))
)


;default_sense && category=verb	bakabaka_kara	0
;"chatter","V","1.bakabaka_karanA"
;Those girls keep chattering whole day.
;--"2.katakatAnA"
;My teeth chattered because of cold.
;"chatty","Adj","1.bakkI/bAwUnI"
;He has a chatty younger brother.
;
;

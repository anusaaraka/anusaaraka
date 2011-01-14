
(defrule before0
(declare (salience 5000))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) everything)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before0   "  ?id "  ke_pahale )" crlf))
)

(defrule before1
(declare (salience 4900))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) throne|principal|judge|house|board|witnesses|chair|chairman|king)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before1   "  ?id "  ke_sAmane )" crlf))
)

(defrule before2
(declare (salience 4800))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isase_pahale_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before2   "  ?id "  isase_pahale_ki )" crlf))
)

;I had known her before you introduced her to me.
(defrule before3
(declare (salience 4700))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before3   "  ?id "  ke_pahale )" crlf))
)

;"before","Adv","1.ke_pahale"
;I reached the cinema hall before you.




;Added by Meena(1.4.10)
;She worked in a school for a while before joining the college . 
;I should have talked to you before the inviting of John . 
;I should have talked to you before inviting John . 
;(defrule before4
;(declare (salience 5000))
;(id-root ?id before)
;?mng <-(meaning_to_be_decided ?id)
;(or(kriyA-before_saMbanXI  ?id1 =(+ ?id 1))(kriyA-before_saMbanXI  ?id1 =(+ ?id 2)))
;;(kriyA-before_saMbanXI  ?id1 =(+ ?id 3)))
;(or (kriyA-object =(+ ?id 1)|=(+ ?id 2)  ?id2)(kqxanwa-of_saMbanXI  =(+ ?id 2) ?id2))
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id se_pahale))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before4   "  ?id "   se_pahale )" crlf))
;)


;Added By Sheetal(11-08-10)
;Above rule commented as its very complicated(This rule works for all the above three sentences)
;She worked in a school for a while before joining the college . 
;I should have talked to you before the inviting of John . 
;I should have talked to you before inviting John .
(defrule before4
(declare (salience 5000))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(kriyA-before_saMbanXI  ?kri ?bfor_s)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before4   "  ?id "   se_pahale )" crlf))
)




;Added by Meena(30.3.10)
;The hare was once boasting of his speed before the other animals . 
(defrule before5
(declare (salience 4600))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id) 
(or(kriyA-before_saMbanXI  ?id1 =(+ ?id 1))(kriyA-before_saMbanXI  ?id1 =(+ ?id 2))(kriyA-before_saMbanXI  ?id1 =(+ ?id 3)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp    before5   "  ?id "   ke_sAmane )" crlf))
)




;Salience reduced by Meena(30.3.10)
(defrule before6
(declare (salience 0))
;(declare (salience 4600))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before6   "  ?id "  se_pahale )" crlf))
)

;"before","Prep","1.ke_pahale"
;I had known her before you introduced her to me.
;--"2.ke_sAmane"
;They danced before me.
;--"3.ke_Age"
;

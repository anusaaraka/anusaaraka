



;Added by Meena(9.9.09)
;Does this shirt match these trousers ? 
(defrule these0
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id these)
(id-root  ?id1  trousers|scissors)
(viSeRya-det_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id isa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  this.clp      these0   "  ?id "  isa )" crlf))
)

;Added by Meena(9.9.09)
;
(defrule these1
(declare (salience 5000))
;(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id these)
(id-root  ?id1  trousers|scissors)
(subject-subject_samAnAXikaraNa ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  this.clp      these1   "  ?id "  yaha )" crlf))
)





(defrule this0
(declare (salience 5000))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) all)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this0   "  ?id "  yaha )" crlf))
)
;Modified yaga- as yaha -- by manju

(defrule this1
(declare (salience 4900))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) very)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this1   "  ?id "  isI )" crlf))
)

; I met you in this very university
(defrule this2
(declare (salience 4800))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this2   "  ?id "  isa )" crlf))
)



;Added by Meena(4.11.09) (salience should be higher than this4)
;We thank you all for coming this evening . 
(defrule this3
(declare (salience 4800))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 evening|morning)
(viSeRya-det_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp      this3   "  ?id "  Aja )" crlf))
)




; This time the crop is good.
(defrule this4
(declare (salience 4700))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this4   "  ?id "  yaha )" crlf))
)

; This book is good.
(defrule this5
(declare (salience 4600))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this5   "  ?id "  yaha )" crlf))
)

;This is a book.
(defrule this6
(declare (salience 4500))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this6   "  ?id "  yaha )" crlf))
)

(defrule this7
(declare (salience 4400))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this7   "  ?id "  iwanA )" crlf))
)

;"this","Adv","1.iwanA"
;The plant is about this high.
;
;
;"this","Adv","1.iwanA"
;The plant is about this high.
;
(defrule this8
(declare (salience 4300))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this8   "  ?id "  yaha )" crlf))
)

;"this","Det","1.yaha[isa`]"
;--"2.yaha"
;This book is for Ram.
;
(defrule this9
(declare (salience 4200))
(id-root ?id this)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  this.clp 	this9   "  ?id "  yaha )" crlf))
)

;"this","Pron","1.yaha"
;Out of the four books, give this to Ram.
;

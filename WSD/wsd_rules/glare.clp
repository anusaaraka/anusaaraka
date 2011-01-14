
(defrule glare0
(declare (salience 5000))
(id-root ?id glare)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id glaring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id camakIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  glare.clp  	glare0   "  ?id "  camakIlA )" crlf))
)

;"glaring","Adj","1.camakIlA"
;We bought glaring bulbs for Diwali.
;
(defrule glare1
(declare (salience 4900))
(id-root ?id glare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa_roSanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glare.clp 	glare1   "  ?id "  wejZa_roSanI )" crlf))
)

(defrule glare2
(declare (salience 4800))
(id-root ?id glare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glare.clp 	glare2   "  ?id "  GUra )" crlf))
)

;default_sense && category=noun	camaka	0
;"glare","N","1.camaka"
;The glare of the sunlight is at it's peak at midnoon.
;--"2.GUranA"
;The teacher's glare frightened the students.
;
;
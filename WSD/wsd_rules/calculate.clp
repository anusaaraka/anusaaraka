
(defrule calculate0
(declare (salience 5000))
(id-root ?id calculate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id calculating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mawalabI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  calculate.clp  	calculate0   "  ?id "  mawalabI )" crlf))
)

;"calculating","Adj","1.mawalabI"
;Rana is the most calculating && selfish boy in our class.
; 
;"calculation","N","1.hisAba_kiwAba/leKA"
;All your calculations about the firm's profit are wrong.
;
(defrule calculate1
(declare (salience 4900))
(id-root ?id calculate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hisAba_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  calculate.clp 	calculate1   "  ?id "  hisAba_lagA )" crlf))
)

;default_sense && category=verb	hisAba_lagA	0
;"calculate","VT","1.hisAba_lagAnA"
;We have to calculate the estimated cost of our journey.
;
;

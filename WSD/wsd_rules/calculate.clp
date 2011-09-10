;"calculating","Adj","1.mawalabI"
;Rana is the most calculating and selfish boy in our class.

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

;Ritesh Srivastava 12-june-2011
;His last words were calculated to wound her
;usake piCale Sabxa usako/use GAyala karane ke liye "racanA karAye/karAe" gaye We.


(defrule calculate1
(declare (salience 4900))
(id-root ?id calculate)
(id-root ?id1 to)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?)
(to-infinitive ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  calculate.clp 	calculate1   "  ?id "  racanA_karA )" crlf))
)


; 
;"calculation","N","1.hisAba_kiwAba/leKA"
;All your calculations about the firm's profit are wrong.
;
(defrule calculate2
(declare (salience 4800))
(id-root ?id calculate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hisAba_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  calculate.clp 	calculate2   "  ?id "  hisAba_lagA )" crlf))
)

;default_sense && category=verb	hisAba_lagA	0
;"calculate","VT","1.hisAba_lagAnA"
;We have to calculate the estimated cost of our journey.
;
;

;Ritesh Srivastava 12-june-2011

;calculated
;That was a calculated attempt to embarrass the Chancellor.
;vaha maMwrI embarras ke liye eka "AMkalana" prayAsa WA.
;It was a cruel, calculated crime with absolutely no justification.

(defrule calculate3
(declare (salience 4700))
(id-root ?id calculate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AMkalana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  calculate.clp 	calculate3   "  ?id "  AaMklana )" crlf))
)



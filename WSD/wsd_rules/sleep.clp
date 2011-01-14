
(defrule sleep0
(declare (salience 5000))
(id-root ?id sleep)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 2) go)
(id-word =(- ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sleep.clp 	sleep0   "  ?id "  - )" crlf))
)

(defrule sleep1
(declare (salience 4900))
(id-root ?id sleep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sleeping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id so))
(assert (id-H_vib_mng ?id wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  sleep.clp  	sleep1   "  ?id "  so )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  sleep.clp      sleep1   "  ?id " wA_huA )" crlf))
)
; Modified by Shirisha Manju (replaced id-wsd_word_mng as id-wsd_root_mng) (4-12-09)
; Ex : The sleeping of students can ruin a lecture . 

(defrule sleep2
(declare (salience 4800))
(id-root ?id sleep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id so))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sleep.clp 	sleep2   "  ?id "  so )" crlf))
)

(defrule sleep3
(declare (salience 4700))
(id-root ?id sleep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sleep.clp 	sleep3   "  ?id "  nIMxa )" crlf))
)

;default_sense && category=noun	nIMxa	0
;"sleep","N","1.nIMxa"
;Most of the people need eight hours of sleep a day.
;
;

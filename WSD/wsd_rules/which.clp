;Addedby Meena(27.3.10)
;To which person were you speaking ? 
;In which room were you sleeping ? 
(defrule which0
(declare (salience 5000))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(wh_question)
(viSeRya-det_viSeRaNa  ?id1  ?id)
(or (kriyA-to_saMbanXI  ?id2 ?id1)(kriyA-in_saMbanXI  ?id2 ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp     which0   "  ?id "  kisa )" crlf))
)


;Below rule commented by Roja(15-12-10) Bcoz same rule is repeated.

;(defrule which1
;(declare (salience 5000))
;(id-root ?id which)
;?mng <-(meaning_to_be_decided ?id)
;(praSnAwmaka_vAkya      )
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kOna_sA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which1   "  ?id "  kOnasA )" crlf))
;)

(defrule which2
(declare (salience 4900))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) one)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which2   "  ?id "  kOnasA )" crlf))
)

(defrule which3
(declare (salience 4800))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ones)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which3   "  ?id "  kOnasA )" crlf))
)

;Which one do you want madam?
(defrule which4
(declare (salience 4700))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which4   "  ?id "  kOnasA )" crlf))
)

(defrule which5
(declare (salience 4600))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which5   "  ?id "  kOnasA )" crlf))
)

;I did not know which to choose.
(defrule which6
(declare (salience 4500))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(or (praSnAwmaka_vAkya      ) (wh_question)) ;Added (wh_question) by Roja(15-12-10) for OL purpose.
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which6   "  ?id "  kOnasA )" crlf))
)

(defrule which7
(declare (salience 4400))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(or (praSnAwmaka_vAkya      )(wh_question)) ;Added (wh_question) by Roja(15-12-10) for OL purpose.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which7   "  ?id "  kOna_sA )" crlf))
)

(defrule which8
(declare (salience 4300))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which8   "  ?id "  jaba_ki )" crlf))
)

;"which","Conj","1.jaba_ki"
;The maid comes in the morning at which time I am asleep .
;
(defrule which9
(declare (salience 4200))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which9   "  ?id "  kOna_sA )" crlf))
)

;"which","Interro","1.kOna_sA"
;Which is your favourite game?.
;Which way do we take for going to the Exhibition Ground.
;
(defrule which10
(declare (salience 4100))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id relative_pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which10   "  ?id "  jo )" crlf))
)

;"which","Rel Pron","1.jo"
;You can take the book which is on the table.
;


;Added by Roja (15-12-10)
;In which school do you study?
(defrule which11
(declare (salience 4000))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id wh-determiner) ; Modified category from 'determiner' to 'wh-determiner' by Roja (08-08-12)
(viSeRya-det_viSeRaNa  ?id1  ?id) ; Added by Roja (08-08-12)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp     which11   "  ?id "  kOna_sA )" crlf))
)


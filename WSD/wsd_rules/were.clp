;Added by Meena(23.3.10)
;If you were a middle-class American without a job , who would you vote for . 
(defrule were0
(declare (salience 5000))
(id-root ?id be )
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) we|you|they)
(kriyA-subject 	?id  =(- ?id 1))
(kriyA-conjunction  ?id  =(- ?id 2))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id howe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp      were0   "  ?id "  howe )" crlf))
)





;Added by Meena(23.3.10)
;If I were to decide ...
(defrule were1
(declare (salience 5000))
(id-root ?id be )
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) he|it|I)
(kriyA-subject  ?id  =(- ?id 1))
(kriyA-conjunction  ?id  =(- ?id 2))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp      were1   "  ?id "  howA )" crlf))
)



;Added by Meena(23.3.10)
;If she were ....
(defrule were2
(declare (salience 5000))
(id-root ?id be )
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) she)
(kriyA-subject  ?id  =(- ?id 1))
 (kriyA-conjunction  ?id  =(- ?id 2))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id howI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp      were2   "  ?id "  howI )" crlf))
)





(defrule were3
(declare (salience 0))
;(declare (salience 4600))
(id-root ?id were)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (id-H_vib_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp 	were3   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  were.clp      were3   "  ?id " WA )" crlf))
)

(defrule were4
(declare (salience 4600))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp    were4   "  ?id "  WA )" crlf))
)
;How many people were there.

;"were","V","1.We"
;They were at home.
;
;

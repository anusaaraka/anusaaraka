;Modified by Meena(5.02.10)
(defrule jam0
(declare (salience 5000))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)  ;added and the next line commented by Meena
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id murabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam0   "  ?id "  murabbA )" crlf))
)




(defrule jam1
(declare (salience 4900))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp 	jam1   "  ?id "  jama )" crlf))
)

;default_sense && category=verb	xabA	0
;"jam","V","1.xabAnA"
;The car was jammed between the two trucks.
;--"2.gadZabadZA_jAnA"
;The machine has jammed due to dust in the pipe.
;--"3.avaroXa_karanA"
;The crowd jammed the street in protest against Mandal Commission.
;
;

;Added by sheetal(6-01-10).
(defrule jam2
(declare (salience 4950))
(id-root ?id jam)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id jammed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jam.clp   jam2   "  ?id "  jAma )" crlf))
)
;They used force to open the jammed door .


(defrule whether0
(declare (salience 5000))
(id-root ?id whether)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) ask|decide|depend|discuss|know|tell|question|wonder)
(id-word ?id1  or )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whether.clp 	whether0   "  ?id "  ki )" crlf))
)

(defrule whether1
(declare (salience 4900))
(id-root ?id whether)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) ask|decide|depend|discuss|know|tell|question|wonder)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA)); Modified ki_kyA as kyA by Manju Ex: I wonder whether we should go.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whether.clp 	whether1   "  ?id "  kyA )" crlf))
)

;Whether he comes or not I will go.
;cAhe vo Aye yA nA Aye meM jAUmgA
(defrule whether2
(declare (salience 100))
(id-root ?id whether)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAhe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whether.clp 	whether2   "  ?id "  cAhe )" crlf))
)

;"whether","Conj","1.ki"
;I don't know whether he will come .
;--"2.cAheM"
;You will get a momento whether you take part in the quiz or not.
;

 ;Aded by sheetal(1-12-2009).
;$$$ MOdified by Pramila(BU) on 20-02-2014
 (defrule whether3
 (declare (salience 4700))
 (id-root 1 whether)
 ?mng <-(meaning_to_be_decided ?id)
 =>
 (retract ?mng)
 (assert (id-wsd_root_mng 1 kyA))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whether.clp   whether3   "  1 "  kyA )" crlf))
 )
 ;Whether we should go to the party is the important question .


;@@@ Added by Pramila(BU) on 20-02-2014
;Ask the guard whether he knows.   ;cald
;पहरेदार से पूछिए क्या वह जानता है
(defrule whether4
(declare (salience 4800))
(id-root ?id whether)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
(kriyA-vAkya_viBakwi  ?kri ?id)
(kriyA-vAkyakarma  ?id1 ?kri)
(id-root ?kri know)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whether.clp 	whether4   "  ?id "  kyA )" crlf))
)


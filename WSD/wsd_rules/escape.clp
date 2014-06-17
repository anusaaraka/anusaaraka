;$$$ Modified by Pramila(BU) on 05-02-2014[meaning changed from 'BAga_jA'to 'nikala'.] 
;Gas is escaping from the pipe.   ;shiksharthi
;गैस पाईप से निकल रही है.
(defrule escape0
 (declare (salience 4000))
 (id-root ?id escape)
 ?mng <-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id verb)
 =>
  (retract ?mng)
  (assert (id-wsd_root_mng ?id nikala))
  (if ?*debug_flag* then
  (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape0   "  ?id "  nikala)" crlf))
 )
 ;"escape","VI","1.BAganA"
;The convicted murderer escaped from a high security prison
;--"2.baca_kara_BAga_jAnA"
;We escaped to our summe


 (defrule escape1
 (declare (salience 4000))
 (id-root ?id escape)
 ?mng <-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id noun)
 =>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id CutakArA))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp    escape1   "  ?id "  CutakArA )" crlf))
 )
 ;"escape","N","1.CutakArA"
;Hard work was his escape from worry
;--"2.bacAva"
;That was a narrow escape
;

;@@@ Added by Pramila(BU) on 05-02-2014
;They escaped to the woods.   ;shiksharthi
;वे जंगल की ओर निकल गए.
(defrule escape2
(declare (salience 4900))
(id-root ?id escape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id nikala_jA))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape2   "  ?id "  nikala_jA)" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;We escaped being caught.   ;shiksharthi
;हम पकड़े जाने से बच गए.
(defrule escape3
(declare (salience 4900))
(id-root ?id escape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kqxanwa_karma  ?id ?)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id baca_jA))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape3   "  ?id "  baca_jA)" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;They wanted to escape from the pollution in city.   ;shiksharthi
;वे शहर के प्रदूषण से बचना चाहते थे.
(defrule escape4
(declare (salience 4900))
(id-root ?id escape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ? ?id)
(kriyA-from_saMbanXI  ?id ?)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id baca))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape4   "  ?id "  baca)" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;The convicted murderer escaped from a high security prison   [old clp]
;दोषी हत्यारा अत्यधिक सुरक्षित जेल से निकल भागा.
;They escaped from the woods/jail.   ;sentence given by Aditi Ma'am.
;वे जेल से निकल भागे.
;added condition '(kriyA-through_saMbanXI  ?id ?id2)' on 17-02-2014]
;The thief escaped through the open gate.   [w3dictionary]
;चोर खुले द्वार में से निकल भागा.
(defrule escape5
(declare (salience 4800))
(id-root ?id escape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-from_saMbanXI  ?id ?id2)(kriyA-through_saMbanXI  ?id ?id2))
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id nikala_BAga))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape5   "  ?id "  nikala_BAga)" crlf))
)

;@@@ Added by Pramila(BU) on 07-02-2014
;Children were evacuated from London to escape the bombing.    [oald]
;बच्चों को बमबारी से बचाने के लिये लन्दन से हटाया गया था . 
(defrule escape6
(declare (salience 4800))
(id-root ?id escape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-from_saMbanXI  ?id1 ?)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id bacA))
 (assert (kriyA_id-object_viBakwi ?id se))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape6   "  ?id "  bacA)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  escape.clp      escape6   "  ?id " se )" crlf))
)


;@@@ Added by Shirisha Manju 16-4-14 Suggested by Sukhada
;We ran after him, but he escaped. 
;hama usake pICe xOde, paranwu vaha BAga gayA.
(defrule escape7
(declare (salience 4900))
(id-root ?id escape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(vAkya-vAkya_saMbanXI  ?id1 ?id)
(id-root ?id1 run)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id BAga_jA))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escape.clp      escape7  "  ?id "  BAga_jA)" crlf)
)
)


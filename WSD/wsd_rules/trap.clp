
(defrule trap0
(declare (salience 5000))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap0   "  ?id "  GAwa )" crlf))
)

;"trap","N","1.GAwa"
;The rat was caught in a trap.
;--"2.jAla"
;The mouse was caught in the trap.
;
(defrule trap1
(declare (salience 4900))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pazsa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap1   "  ?id "  Pazsa_jA )" crlf))
)

;"trap","V","1.Pazsa_jAnA"
;He was trapped inside when the fire broke out.
;--"2.jAla_lagAnA"
;The hunter hid behind the bushes to trap the antelope.
;

;;@@@   ---Added by Prachi Rathore
(defrule trap2
(declare (salience 5500))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-as_saMbanXI  ?id1 ?id)
(kriyA-object ?id1 ?id2)
(id-root ?id2 marriage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap2   "  ?id "  PaMxA )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;A pony and trap.[oald]
;टट्टू और दोपहिया गाडी . 
(defrule trap3
(declare (salience 5500))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(conjunction-components  ? ?id1 ?id)
(id-root ?id1 pony)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xopahiyA_gAdZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap3   "  ?id "  xu_pahiyA_gAdZI )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;Shut your trap![oald]
;आपका मुँह बन्द कीजिए! 
(defrule trap4
(declare (salience 5500))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(viSeRya-kqxanwa_viSeRaNa  ?id ?id1))
(id-root ?id1 shut)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap4  "  ?id "  muzha )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;To keep your trap shut .[oald]
;आपका मुँह बन्द  रखने के लिये  . 
(defrule trap5
(declare (salience 5500))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-vAkya_subject  ?id2 ?id1)
(id-root ?id2 shut)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap5  "  ?id "  muzha )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;A fox with its leg in a trap.[oald]
;पिंजरे में उसके टाङ्ग के साथ लोमडी . 
(defrule trap6
(declare (salience 5500))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-in_saMbanXI  ?id1 ?id)(viSeRya-in_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piMjarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap6  "  ?id "  piMjarA )" crlf))
)

;;@@@   ---Added by Prachi Rathore
; A trap was laid, with fresh bait. [oald]
;पिंजरा ताजे चारे से रखे हुए.
(defrule trap7
(declare (salience 5500))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(kriyA-with_saMbanXI  ?id1 ?id2)
(id-root ?id2 bait)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piMjarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap7  "  ?id "  piMjarA )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;She had set a trap for him and he had walked straight into it. [oald]
;
(defrule trap8
(declare (salience 5500))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap8  "  ?id "  cAla )" crlf))
)

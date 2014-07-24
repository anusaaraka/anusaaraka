
(defrule dive0
(declare (salience 4900))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive0   "  ?id "  dubakI )" crlf))
)

;"dive","N","1.dubakI"
;He went for a dive in the deep sea.
;


;@@@ Added by Pramila(BU) on 10-12-2013
;He made a dive to catch the ball.
;usane bOYla pakadZane ke liye CalAMga lagAI.
(defrule dive1
(declare (salience 5000))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id ?id1)
(id-root ?id1 catch)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive1   "  ?id "  CalAMga )" crlf))
)

;@@@ Added by Pramila(BU) on 10-12-2013
;She dived into her purse for her car keys.               ;sentence of this file
;usane apane parsa meM apanI kAra kI cABiyoM ke liye hAWa dAlA.
(defrule dive2
(declare (salience 5000))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(kriyA-for_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive2   "  ?id "  hAWa_dAla )" crlf))
)

;@@@ Added by Pramila(BU) on 10-12-2013
;The goalie dived for the ball, but missed it.            ;oald
;गोलकीपर गेंद के लिए लपका, लेकिन इससे चूक गया.
(defrule dive3
(declare (salience 4900))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive3   "  ?id "  lapaka )" crlf))
)

;@@@ Added by Pramila(BU) on 10-12-2013
;The share price dived from 49p to an all-time low of 40p.          ;oald
;शेयर की कीमत 49p से 40p एकदम गिर गई .
(defrule dive4
(declare (salience 5000))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id2)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive4   "  ?id "  gira_jA )" crlf))
)

;@@@ Added by Pramila(BU) on 10-12-2013
;We heard an explosion and dived for cover.           ;oald
;हमने एक धमाका सुना और बचने के लिए चले गए.
;It started to rain so we dived into the nearest cafe.              ;oald
;बारिश शुरू होने वाली थी इसलिए हम निकटतम कैफे में चले गए.
(defrule dive5
(declare (salience 4900))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-for_saMbanXI  ?id ?id1)(kriyA-into_saMbanXI  ?id ?id1))
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive5   "  ?id "  cale_jA )" crlf))
)



(defrule dive6
(declare (salience 4000))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubakI_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive6   "  ?id "  dubakI_mAra )" crlf))
)

;"dive","VI","1.dubakI_mAranA"
;He dived deep in the blue waters.
;--"2.Koha_meM_jAnA"
;
;LEVEL 
;Hadword : dive
;
;Examples --
;
;"dive","N","1.gowA"
;He went for a dive in the deep sea.
;vaha gahare samuxra meM dubakI lagAne gayA.
;--"2.nIce lapakanA"
;He made a dive to catch the ball.
;?usane bOYla pakadZane ke liye nIce lapakanA kiyA
;vaha bOYla pakadZane ke liye nIce lapakA.
;
;"dive","VI","1.gowA_lagAnA"
;He dived deep in the blue waters.
;usane nIle pAnI meM gaharAI meM gowA lagAyA
;
;She dived into her purse for her car keys.
;usane apane parsa meM apanI kAra kI cABiyoM ke liye hAWa dAlA.
;
;'dive' Sabxa kA arWa dikSanarI meM 'sira ke bala pAnI meM sIXe kUxanA' xiyA gayA hE. 'dAiva' meM 'nIce kI ora' Ora 'wejZa gawi' BAva pramuKa hE. yaha kriyA saxEva pAnI
;meM ho yaha jZarUrI nahIM hE (havAI jahAjZa se 'dAiva' karanA, bOYla pakadZane ke liye 'dAiva'
;karanA) Ora isameM 'kUxanA' BI AvaSyaka nahIM hE (parsa meM hAWa dAlanA).
;
;hinxI Sabxa 'gowA' 'dive' ke kAPI nikata hE kinwu isameM 'hAWa dAlanA' yA 'bOYla ke liye lapakanA' vAle BAva nahIM hE. awaH isakA sUwra ho sakawA hE
;
;sUwra : gowA` 

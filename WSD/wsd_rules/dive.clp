
(defrule dive0
(declare (salience 5000))
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
(defrule dive1
(declare (salience 4900))
(id-root ?id dive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dubakI_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dive.clp 	dive1   "  ?id "  dubakI_mAra )" crlf))
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

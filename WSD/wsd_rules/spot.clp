;@@@ Added by jagriti(3.4.2014)
;When the police reached the spot they found him dead.
; घटना स्थल पर पहुंचने पर पता चला कि उसकी मौत हो चुकी है।
(defrule spot4
(declare (salience 5000))
(id-root ?id spot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(kriyA-to_saMbanXI ?id1 ?id))
(id-root ?id1 reach|rush)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatanA_sWala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spot.clp 	spot4   "  ?id "  GatanA_sWala )" crlf))
)
(defrule spot0
(declare (salience 4900))
(id-root ?id spot)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id spotted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XabbexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  spot.clp  	spot0   "  ?id "  XabbexAra )" crlf))
)

;"spotted","Adj","1.XabbexAra"
;In J.P, academy children wear blue spotted shocks.
;
(defrule spot1
(declare (salience 1))
(id-root ?id spot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XabbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spot.clp 	spot1   "  ?id "  XabbA )" crlf))
)

;"spot","N","1.XabbA/binxu"
;That poor black boy has many spots on his body.
;--"2.kalaMka"
;A single spot on the character spoils the life.
;
(defrule spot2
(declare (salience 4800))
(id-root ?id spot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spot.clp 	spot2   "  ?id "  xeKa )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;Their house occupies a beautiful spot next to the ocean.
;उनके घर समुद्र के बगल में एक खूबसूरत जगह में स्थित हैं.
(defrule spot3
(declare (salience 5000))
(id-root ?id spot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 beautiful)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spot.clp 	spot3   "  ?id "  jagaha )" crlf))
)


;"spot","V","1.xeKanA"
;Many people spotted their leader in the mob.
;
;LEVEL 
;
;
;"spot"
;"spot","N","1.XabbA"
;The shirt had blue spots.
;kamIjZa para nIle Xabbe We
;
;"spot","V","1.niSAna_lagAnA"
;<--- XabbA_lagAnA<--cihniwa_karanA
;He finally spotted just the shirt he wanted
;Ora anwa meM use jo Sarta cAhiye WI vaha usane xeKa lI
;<--bahuwa sI Sarta meM se usa Sarta ko pahacAna liyA <--usa Sarta ko cihnAMkiwa kiyA
;
;--"2.pahacAnanA"
;<---xono ke anwara ko cihnAMkiwa karanA<--cihna lagAnA
;I cannot spot the difference between them
;mEM una xonoM ke anwara ko nahIM pahacAna sakawA 
;
;---[mana_meM]_cihniw__karanA
;Can you spot the flaw in their arguement
;kyA wuma unake vivAxa(kA viRaya)meM xoRa pahacAna sakawe ho
;<-- kamajZorI ko cihnAMkiwa karanA
;
;sUwra : cihniwa_kara[<XabbA]
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_spot3
(declare (salience 5000))
(id-root ?id spot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 beautiful)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spot.clp   sub_samA_spot3   "   ?id " jagaha )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_spot3
(declare (salience 5000))
(id-root ?id spot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 beautiful)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " spot.clp   obj_samA_spot3   "   ?id " jagaha )" crlf))
)

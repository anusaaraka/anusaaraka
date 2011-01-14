
(defrule spot0
(declare (salience 5000))
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
(declare (salience 4900))
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
